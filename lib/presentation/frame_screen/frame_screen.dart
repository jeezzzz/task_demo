import 'package:flutter/material.dart';
import 'package:ajeesh_s_application3/core/app_export.dart';

class FrameScreen extends StatelessWidget {
  const FrameScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 662.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 13.v,
                        ),
                        SizedBox(height: 54.v),
                        SizedBox(
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack900,
                                height: 42.adaptSize,
                                width: 42.adaptSize,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack9007x7,
                                height: 7.adaptSize,
                                width: 7.adaptSize,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                  left: 9.h,
                                  top: 9.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack90025x37,
                                height: 25.v,
                                alignment: Alignment.bottomRight,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 42.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorBlack90019x258,
                          height: 19.v,
                        ),
                        SizedBox(height: 11.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorGray600,
                          height: 29.v,
                        ),
                        SizedBox(height: 24.v),
                        SizedBox(
                          height: 47.v,
                          width: 215.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorOnprimarycontainer,
                                height: 47.v,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(8.h, 17.v, 8.h, 14.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorOnprimarycontainer15x56,
                                        height: 15.v,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray500,
                                        height: 6.v,
                                        margin: EdgeInsets.only(
                                          top: 2.v,
                                          bottom: 6.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.v),
                        SizedBox(
                          height: 48.v,
                          width: 216.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 48.v,
                                  width: 216.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorOnprimary,
                                height: 11.v,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 121.v),
                        _buildFortyFour(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 118.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorPrimarycontainer,
                height: 102.v,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary,
                height: 112.v,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
