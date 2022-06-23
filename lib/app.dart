import 'package:fasta/api_client/infrastruture/dio_helper.dart';
import 'package:fasta/auth/bloc/auth_bloc.dart';
import 'package:fasta/onboarding/fasta_started_screen.dart';
import 'package:fasta/auth/forgot_password_screen.dart';
import 'package:fasta/auth/infrastucture/repo.dart';
import 'package:fasta/auth/repository/repo.dart';
import 'package:fasta/auth/signin_screen.dart';
import 'package:fasta/auth/signup_screen.dart';
import 'package:fasta/dashboard/add_interests.dart';
import 'package:fasta/dashboard/dashboard.dart';
import 'package:fasta/nav/bottom_nav_bar.dart';
import 'package:fasta/onboarding/fasta_type.dart';
import 'package:fasta/onboarding/onboarding_view.dart';
import 'package:fasta/profile/application/bloc/profile_bloc.dart';
import 'package:fasta/profile/edit.dart';
import 'package:fasta/profile/home.dart';
import 'package:fasta/profile/infrastruture/repo.dart';
import 'package:fasta/profile/repository/repo.dart';
import 'package:fasta/profile/support.dart';
import 'package:fasta/profile/verify_email.dart';
import 'package:fasta/rider_app/auth/bloc/auth_rider_bloc.dart';
import 'package:fasta/rider_app/auth/infrastruture/repo.dart';
import 'package:fasta/rider_app/auth/repository/repo.dart';
import 'package:fasta/rider_app/auth/view/add_photo.dart';
import 'package:fasta/rider_app/auth/view/sign_in_screen.dart';
import 'package:fasta/rider_app/auth/view/sign_up_confirmation.dart';
import 'package:fasta/rider_app/auth/view/sign_up_personal_info.dart';
import 'package:fasta/rider_app/auth/view/sign_up_vehicle_type.dart';
import 'package:fasta/rider_app/auth/view/sign_up_verification.dart';
import 'package:fasta/rider_app/auth/view/sing_up_bike_name.dart';
import 'package:fasta/rider_app/dashboard/dashboard.dart';
import 'package:fasta/rider_app/nav/bottom_nav_bar.dart';
import 'package:fasta/rider_app/orders/orders.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/application/map/shipment_bloc.dart';
import 'package:fasta/shipping/arrival_time.dart';
import 'package:fasta/shipping/chat.dart';
import 'package:fasta/shipping/contact_rider.dart';
import 'package:fasta/shipping/infrastructure/repo.dart';
import 'package:fasta/shipping/item_info.dart';
import 'package:fasta/shipping/ongoing_orders.dart';
import 'package:fasta/shipping/order_details.dart';
import 'package:fasta/shipping/order_receipt.dart';
import 'package:fasta/shipping/payment_option.dart';
import 'package:fasta/shipping/repository/repo.dart';
import 'package:fasta/shipping/rider_profile.dart';
import 'package:fasta/shipping/rider_scan.dart';
import 'package:fasta/shipping/select_ride.dart';
import 'package:fasta/shipping/tracker.dart';
import 'package:fasta/shipping/trip_complete.dart';
// project imports
import 'package:fasta/splash/splash_view.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/wallet/bloc/paystack_bloc.dart';
import 'package:fasta/wallet/cubit/wallet_cubit.dart';
import 'package:fasta/wallet/infrastructure/repo.dart';
import 'package:fasta/wallet/repository/repo.dart';
import 'package:fasta/wallet/transaction_histroy.dart';
import 'package:fasta/wallet/wallet.dart';
// flutter imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class Fasta extends StatelessWidget {
  const Fasta({Key? key}) : super(key: key);

  Future getLocation() async {
    await [Permission.location].request();
    bool isEnabled = await Permission.location.serviceStatus.isEnabled;
    if (!isEnabled) {
      await [Permission.location].request();
    }
  }

  @override
  Widget build(BuildContext context) {
    final DioClient _plugin = DioClient();
    precacheImage(Image.asset('assets/young.png').image, context);

    precacheImage(Image.asset('assets/2.0x/nav_bar_send.png').image, context);
    precacheImage(Image.asset('assets/2.0x/nav_bar_wallet.png').image, context);
    precacheImage(Image.asset('assets/2.0x/nav_bar_cards.png').image, context);
    precacheImage(
        Image.asset('assets/2.0x/nav_bar_dashboard.png').image, context);
    getLocation();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(AuthImpl(_plugin)),
        ),
        RepositoryProvider(
          create: (context) => AuthRiderRepository(AuthRiderImpl(_plugin)),
        ),
        RepositoryProvider(
          create: (context) => WalletRepository(WalletDataImpl(_plugin)),
        ),
        RepositoryProvider(
          create: (context) => ShipmentRepository(ShipmentDataImpl(_plugin)),
        ),
        RepositoryProvider(
          create: (context) => ProfileRepository(ProfileDataImpl(_plugin)),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ShipmentBloc(),
          ),
          BlocProvider(
            create: (context) => AuthRiderBloc(context.read<AuthRiderRepository>()),
          ),
          BlocProvider(
            create: (context) => AuthBloc(context.read<AuthRepository>()),
          ),
          BlocProvider(
            create: (context) => PaystackBloc(context.read<WalletRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                ShipmentHandlerBloc(context.read<ShipmentRepository>()),
          ),
          BlocProvider(
            create: (context) => ProfileBloc(context.read<ProfileRepository>())
              ..add(
                const ProfileEvent.getProfile(),
              ),
          ),
          BlocProvider(
            create: (context) => WalletCubit(),
          ),
        ],
        child: MaterialApp(
            title: 'Fasta',
            debugShowCheckedModeBanner: false,
            routes: {
              Splash.route: (_) => const Splash(),
              FastaStartedScreen.route: (_) => const FastaStartedScreen(),
              ForgotPasswordScreen.route: (_) => const ForgotPasswordScreen(),
              SigninScreen.route: (_) => const SigninScreen(),
              SignupScreen.route: (_) => const SignupScreen(),
              OnBoardingView.route: (_) => const OnBoardingView(),
              FastaTypeSelection.route: (_) => const FastaTypeSelection(),
              DashBoardView.route: (_) => const DashBoardView(),
              AddInterests.route: (_) => const AddInterests(),
              SelectRide.route: (_) => const SelectRide(),
              SenderInfo.route: (_) => const SenderInfo(),
              ItemInfo.route: (_) => const ItemInfo(),
              PaymentOptions.route: (_) => const PaymentOptions(),
              RiderScan.route: (_) => const RiderScan(),
              ArrivalTime.route: (_) => const ArrivalTime(),
              ContactRider.route: (_) => const ContactRider(),
              ChatView.route: (_) => const ChatView(),
              RiderProfile.route: (_) => const RiderProfile(),
              ItemTrackerView.route: (_) => const ItemTrackerView(),
              OrderReceipt.route: (_) => const OrderReceipt(),
              TripCompleted.route: (_) => const TripCompleted(),
              BottomNavBar.route: (_) => const BottomNavBar(),
              WalletView.route: (_) => const WalletView(),
              TransactionHistory.route: (_) => const TransactionHistory(),
              ProfileView.route: (_) => const ProfileView(),
              OngoingOrders.route: (_) => const OngoingOrders(),
              EditProfileView.route: (_) => const EditProfileView(),
              SupportView.route: (_) => const SupportView(),
              SignUpRiderView.route: (_) => const SignUpRiderView(),
              VehicleInfoRiderView.route: (_) => const VehicleInfoRiderView(),
              VerificationRiderView.route: (_) => const VerificationRiderView(),
              ConfirmationRiderView.route: (_) => const ConfirmationRiderView(),
              BikeNameRiderView.route: (_) => const BikeNameRiderView(),
              AddPhotoRiderView.route: (_) => const AddPhotoRiderView(),
              BottomNavBarRider.route: (_) => const BottomNavBarRider(),
              DashBoardViewRider.route: (_) => const DashBoardViewRider(),
              OrdersViewRider.route: (_) => const OrdersViewRider(),
              SigninScreenRider.route:(_)=> const SigninScreenRider(),
              VerifyEmail.route:(_)=> const VerifyEmail(),
            },
            home: const Responsive(
                designHeight: 812, designWidth: 375, child: Splash())),
      ),
    );
  }
}
