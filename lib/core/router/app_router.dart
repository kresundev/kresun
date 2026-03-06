import 'package:go_router/go_router.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/login/login_page.dart';
import '../../presentation/pages/customers/list/customers_list_page.dart';
import '../../presentation/pages/master_customers/list/master_customers_list_page.dart';
import '../../presentation/pages/register_referral/register_referral_page.dart';
import '../../presentation/pages/root/root_page.dart';
import '../../presentation/pages/submit/first_phase/submit_first_phase_page.dart';
import '../../presentation/pages/submit/second_phase/submit_second_phase_page.dart';
import '../../presentation/pages/submit/third_phase/submit_third_phase_page.dart';
import '../../presentation/pages/submit/fourth_phase/submit_fourth_phase_page.dart';
import '../../data/models/master_customer_model.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const RootPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/register-referral',
      builder: (context, state) => const RegisterReferralPage(),
    ),
    GoRoute(
      path: '/customers',
      builder: (context, state) => const CustomersListPage(),
    ),
    GoRoute(
      path: '/master-customers',
      builder: (context, state) => const MasterCustomersListPage(),
    ),
    GoRoute(
      path: '/submit-first-phase',
      builder: (context, state) => SubmitFirstPhasePage(
        masterCustomer: state.extra as MasterCustomerModel?,
      ),
    ),
    GoRoute(
      path: '/submit-second-phase',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return SubmitSecondPhasePage(
          customerId: extra['customerId'] as String,
          customerName: extra['customerName'] as String,
          fromCustomerList: extra['fromCustomerList'] as bool? ?? false,
        );
      },
    ),
    GoRoute(
      path: '/submit-third-phase',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return SubmitThirdPhasePage(
          customerId: extra['customerId'] as String,
          fromCustomerList: extra['fromCustomerList'] as bool? ?? false,
        );
      },
    ),
    GoRoute(
      path: '/submit-fourth-phase',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return SubmitFourthPhasePage(
          customerId: extra['customerId'] as String,
          fromCustomerList: extra['fromCustomerList'] as bool? ?? false,
        );
      },
    ),
  ],
);
