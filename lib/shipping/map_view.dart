import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/application/map/shipment_bloc.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  static const String route = '/MapView';
  final List<Widget> children;

  const MapView({Key? key, required this.children}) : super(key: key);
  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final CameraPosition _initialLocation =
      const CameraPosition(target: LatLng(9.0764785, 7.398574), zoom: 15);
  late GoogleMapController mapController;

  Position? _currentPosition;
  String _currentAddress = '';

  final startAddressController = TextEditingController();
  final destinationAddressController = TextEditingController();

  final startAddressFocusNode = FocusNode();
  final desrinationAddressFocusNode = FocusNode();

  String _startAddress = '';
  String _destinationAddress = '';
  String? _placeDistance;

  Set<Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    context.read<ShipmentBloc>().add(const ShipmentEvent.getCurrentLocation());
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: <Widget>[
            // Map View
            BlocBuilder<ShipmentHandlerBloc, ShipmentHandlerState>(
                builder: (context, state) {
              startAddressController.text = state.address?.from ?? '';
              destinationAddressController.text = state.address?.to ?? '';

              if (markers.isNotEmpty) markers.clear();
              if (polylines.isNotEmpty) {
                polylines.clear();
              }
              _placeDistance = null;
              context.read<ShipmentBloc>().add(ShipmentEvent.setMarkers(
                  startAddress: state.address?.to ?? "",
                  destinationAddress: state.address?.from ?? '',
                  currentPosition: _currentPosition,
                  currentAddress: _currentAddress));

              return BlocConsumer<ShipmentBloc, ShipmentState>(
                  listener: ((context, state) {
                state.whenOrNull(
                  currentAddress: (currentAddress, errorMessage) {},
                );
              }), builder: (context, state) {
                // if(state is currentAddress){},
                return GoogleMap(
                    markers: Set<Marker>.from(markers),
                    initialCameraPosition: _initialLocation,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: true,
                    mapType: MapType.normal,
                    zoomGesturesEnabled: true,
                    zoomControlsEnabled: false,
                    polylines: Set<Polyline>.of(polylines.values),
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                    });
              });
            }),

            // Show zoom buttons
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Colors.blue.shade100, // button color
                        child: InkWell(
                          splashColor: Colors.blue, // inkwell color
                          child: SizedBox(
                            width: 40.h,
                            height: 40.h,
                            child: const Icon(Icons.add),
                          ),
                          onTap: () {
                            mapController.animateCamera(
                              CameraUpdate.zoomIn(),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ClipOval(
                      child: Material(
                        color: Colors.blue.shade100, // button color
                        child: InkWell(
                          splashColor: Colors.blue, // inkwell color
                          child: SizedBox(
                            width: 40.h,
                            height: 40.h,
                            child: const Icon(Icons.remove),
                          ),
                          onTap: () {
                            mapController.animateCamera(
                              CameraUpdate.zoomOut(),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Show the place input fields & button for
            // showing the route
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: FastaColors.primary2.withOpacity(0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0.h),
                    ),
                  ),
                  width: width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 20.h),
                        SearchMapTextField(
                            label: 'Start',
                            hint: 'Choose starting point',
                            // prefixIcon: const Icon(Icons.looks_one),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.my_location),
                              onPressed: () {
                                if (_currentAddress == '') {
                                  startAddressController.text = _currentAddress;
                                  _startAddress = _currentAddress;
                                  setState(() {});
                                }
                              },
                            ),
                            controller: startAddressController,
                            focusNode: startAddressFocusNode,
                            width: width,
                            locationCallback: (String value) {
                              setState(() {
                                _startAddress = value;
                              });
                            }),
                        const SizedBox(height: 10),
                        SearchMapTextField(
                            label: 'Destination',
                            hint: 'Choose destination',
                            // prefixIcon: const Icon(Icons.looks_two),
                            controller: destinationAddressController,
                            focusNode: desrinationAddressFocusNode,
                            width: width,
                            locationCallback: (String value) {
                              setState(() {
                                _destinationAddress = value;
                              });
                            }),
                        const SizedBox(height: 10),
                        Visibility(
                          visible: _placeDistance == null ? false : true,
                          child: Text(
                            'DISTANCE: ${_placeDistance ?? 0.00} km',
                            style: FastaTextStyle.hardLabel2,
                          ),
                        ),
                        const SizedBox(height: 5),
                        BlocListener<ShipmentBloc, ShipmentState>(
                          listener: (context, state) {
                            state.whenOrNull(currentLocation:
                                (currentPosition, errorMessage) {
                              _currentPosition = currentPosition;
                            }, currentAddress: (currentAddress, errorMessage) {
                              _currentAddress = currentAddress;
                              _startAddress = currentAddress;
                            }, getMarkers: (marker, errorMessage) {
                              markers = marker;
                            }, geographicLocation: (geographicLocation) {
                              mapController
                                  .animateCamera(CameraUpdate.newLatLngBounds(
                                      LatLngBounds(
                                        northeast: LatLng(
                                            geographicLocation
                                                .northEastLatitude,
                                            geographicLocation
                                                .northEastLongitude),
                                        southwest: LatLng(
                                            geographicLocation
                                                .southWestLatitude,
                                            geographicLocation
                                                .southWestLongitude),
                                      ),
                                      100.0));
                            }, calculatedDistance: (distance) {
                              _placeDistance = distance;
                            }, polyLineMapForDrawing: (polyies) {
                              polylines = polyies;
                            });
                          },
                          child: ElevatedButton(
                            onPressed: (_startAddress != '' &&
                                    _destinationAddress != '')
                                ? () async {
                                    startAddressFocusNode.unfocus();
                                    desrinationAddressFocusNode.unfocus();
                                    setState(() {
                                      if (markers.isNotEmpty) markers.clear();
                                      if (polylines.isNotEmpty) {
                                        polylines.clear();
                                      }
                                      _placeDistance = null;
                                    });
                                    context.read<ShipmentBloc>().add(
                                        ShipmentEvent.setMarkers(
                                            startAddress: _startAddress,
                                            destinationAddress:
                                                _destinationAddress,
                                            currentPosition: _currentPosition,
                                            currentAddress: _currentAddress));
                                  }
                                : null,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Show Route'.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Show current location button
            SafeArea(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                  child: ClipOval(
                    child: Material(
                      color: Colors.orange.shade100, // button color
                      child: InkWell(
                        splashColor: Colors.orange, // inkwell color
                        child: const SizedBox(
                          width: 56,
                          height: 56,
                          child: Icon(Icons.my_location),
                        ),
                        onTap: () {
                          (_currentPosition != null)
                              ? mapController
                                  .animateCamera(CameraUpdate.newCameraPosition(
                                  CameraPosition(
                                    target: LatLng(
                                      _currentPosition!.latitude,
                                      _currentPosition!.longitude,
                                    ),
                                    zoom: 58.0,
                                  ),
                                ))
                              : null;
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        size: 20.h,
                      ))),
            ),
            for (Widget children in widget.children) children
          ],
        ),
      ),
    );
  }
}

class SearchMapTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  final String hint;
  final double width;
  // final Icon prefixIcon;
  final Widget? suffixIcon;
  final Function(String) locationCallback;
  const SearchMapTextField({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.label,
    required this.hint,
    required this.width,
    // required this.prefixIcon,
    this.suffixIcon,
    required this.locationCallback,
  }) : super(key: key);

  @override
  State<SearchMapTextField> createState() => _SearchMapTextFieldState();
}

class _SearchMapTextFieldState extends State<SearchMapTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.8.screenWidth,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.h)),
      child: TextField(
        onChanged: (value) {
          widget.locationCallback(value);
        },
        controller: widget.controller,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
          // prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          labelText: widget.label,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0.h),
            ),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0.h),
            ),
            borderSide: BorderSide(
              color: Colors.blue.shade300,
              width: 2,
            ),
          ),
          contentPadding: const EdgeInsets.all(15),
          hintText: widget.hint,
        ),
      ),
    );
  }
}
