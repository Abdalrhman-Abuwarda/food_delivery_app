part of styles;

class ThemeManager {
  static ThemeData get lightTheme {
    return ThemeData( //2
        primaryColor: Colors.transparent,
        scaffoldBackgroundColor: whiteColor,
        fontFamily: 'Metropolis', //3
        buttonTheme: ButtonThemeData( // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: orangeColor,
        ),

//-------------------------------AppBarTheme------------------------------------
        appBarTheme:  AppBarTheme(
            toolbarHeight: AppSize.s100.h,
            elevation: 0,
            iconTheme: const IconThemeData(
              size: AppSize.s25,
              color: primaryFontColor,
            ),
            centerTitle: true,
            // titleSpacing: 30,
            actionsIconTheme: const IconThemeData(
              size: AppSize.s25,
              color: Color(0xFF151617),
            ),
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(fontSize: 24.0.sp,fontFamily: 'Metropolis', fontWeight: FontWeight.w800, color: primaryFontColor)
        ),


//--------------------------------textTheme-------------------------------------
        textTheme:   TextTheme(
          headline1: TextStyle(fontSize: 30.sp, fontFamily: 'Metropolis',fontWeight: FontWeight.w600, color: primaryFontColor),
          headline2: TextStyle(fontSize: 28.0.sp,fontFamily: 'Metropolis', fontWeight: FontWeight.w800, color: blackColor),
          // headline3: TextStyle(fontSize: 17.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.w600, color: blackColor),
          // headline4: TextStyle(fontSize: 15.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: blackColor),
          // headline5: TextStyle(fontSize: 13.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: blackColor ),
          // headline6: TextStyle(fontSize: 13.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.thirdFontColor),
          // subtitle2: TextStyle(fontSize: 24.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: blackColor),
          // bodyText1: TextStyle(fontSize: 11.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: blackColor ),
          // bodyText2: TextStyle(fontSize: 12.0.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: blackColor ),
          // subtitle1: TextStyle(fontSize: 13.sp,fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: ColorManager.blackColor),

          labelMedium: TextStyle(fontSize: 14.0.sp,fontFamily: 'Metropolis', fontWeight: FontWeight.normal, color: secondaryFontColor )
        ),

//-------------------------------ElevatedButtonTheme----------------------------
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: orangeColor,
              textStyle: TextStyle(fontSize: 16.sp, fontFamily: 'Metropolis', fontWeight: FontWeight.w600, color: whiteColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s28.r),
              ),
              minimumSize: Size(double.infinity, 56.h)
          ),
        ),

//------------------------------InputDecorationTheme----------------------------
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: placeholderBg,
          contentPadding: EdgeInsets.symmetric(vertical: AppPadding.p15.h, horizontal: AppPadding.p20.w),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s28.r),
              borderSide: const BorderSide(
                  color: Colors.transparent
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s28.r),
              borderSide: const BorderSide(
                color: placeholderBg,
              )
          ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s28.r)),
            borderSide:  const BorderSide(
              color: redColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s28.r)),
            borderSide: const BorderSide(
              color: orangeColor,
              width: 2,
            ),
          ),
        )

//------------------------------------------------------------------------------
    );
  }
}