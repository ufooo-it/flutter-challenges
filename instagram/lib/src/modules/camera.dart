import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../assets/icons/app_icons.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  bool _isLoading = true;
  late CameraController controller;

  @override
  void initState() {
    super.initState();

    _initCamera();
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      controller = CameraController(cameras.first, ResolutionPreset.max);
      await controller.initialize();
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
          ),
        );
        setState(() {
          _isLoading = false;
        });
      }).catchError((Object e) {
        if (e is CameraException) {
          print(e.description);
        }
      });
    }
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    if (_isLoading == false) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _isLoading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : SafeArea(
              child: IconTheme(
                data: IconThemeData(
                  color: Colors.white,
                  size: 32,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: CameraPreview(
                        controller,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  constraints: const BoxConstraints(
                                    maxHeight: 48,
                                    maxWidth: 48,
                                  ),
                                  onPressed: () {},
                                  icon: const Icon(AppIcons.options),
                                ),
                                IconButton(
                                  constraints: const BoxConstraints(
                                    maxHeight: 48,
                                    maxWidth: 48,
                                  ),
                                  onPressed: () {},
                                  icon: const Icon(Icons.flash_off),
                                ),
                                IconButton(
                                  constraints: const BoxConstraints(
                                    maxHeight: 48,
                                    maxWidth: 48,
                                  ),
                                  onPressed: () {},
                                  icon: const Icon(Icons.close),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 80,
                              margin: const EdgeInsets.only(bottom: 16.0),
                              padding: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
