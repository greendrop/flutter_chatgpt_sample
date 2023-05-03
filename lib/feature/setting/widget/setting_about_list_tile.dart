import 'package:flutter/material.dart';
import 'package:flutter_chatgpt_sample/config/app_constant.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingAboutListTile extends HookConsumerWidget {
  const SettingAboutListTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context)!;
    final packageInfo = useState<PackageInfo?>(null);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          packageInfo.value = await PackageInfo.fromPlatform();
        });
        return () {};
      },
      [],
    );

    if (packageInfo.value == null) {
      return Container();
    }

    return AboutListTile(
      key: const ValueKey('aboutListTile'),
      icon: const Icon(FontAwesomeIcons.info),
      applicationName: packageInfo.value!.appName,
      applicationIcon: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppConstant.spacing1),
          child: Icon(FontAwesomeIcons.comments),
        ),
      ),
      applicationVersion: packageInfo.value!.version,
      child: Text(l10n.aboutAppTitle),
    );
  }
}
