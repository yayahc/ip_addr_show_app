import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ip_addr_show/di.dart';
import 'package:ip_addr_show/features/ip_addr/cubit/ip_addr_cubit.dart';
import 'package:ip_addr_show/features/ip_addr/screens/main_screen.dart';

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.get<IpAddrCubit>(),
      child: MaterialApp(
        navigatorKey: navKey,
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}
