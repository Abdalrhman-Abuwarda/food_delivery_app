part of pages;

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {


  @override
  Widget build(BuildContext context) {
    var h;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            height: 406.h,
            decoration: BoxDecoration(

              image: DecorationImage(
                image:  AssetImage("assets/imags/Organe top shape.png",
                 ),
                fit: BoxFit.cover
              )
            ),
          ),
          Transform.translate(
              offset: Offset(0,-80),
              child: SplashLogo()),
           SizedBox(
             height: 58.h,
             width: 271.w,
             child: Text(
               "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
               style: Theme.of(context).textTheme.caption!.copyWith(
                 color: secondaryFontColor,
                 fontWeight: FontWeight.bold,
               ),
               textAlign: TextAlign.center,
             ),
           ),
           Padding(
               padding: EdgeInsets.only(
                   right: 34.w, left: 34.w,  bottom: 20.h),
               child: ButtonMain(text: "Login", onPress: (){
                 setState(() {
                   Navigator.pushReplacementNamed(context, "/login");
                 });
               })),
           OutlinedButton(
             onPressed: (){
               setState(() {
                 Navigator.pushReplacementNamed(context, '/signup');
               });
             },
             style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(28.r)
                 ),
                 side: BorderSide(
                     color: mainColor
                 ),
                 minimumSize: Size(307.w, 56.h),
                 padding: EdgeInsets.all(16)
             ),
             child: Text("Create an Account", style: TextStyle(color: mainColor),),
           ),

        ],
      ),
    );
  }
}
