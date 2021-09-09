import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'Signing.dart';
import 'package:sida_app/localization/app_localization.dart';
import 'package:sida_app/localization/localization_method.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'splash_bg_no_cairo' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/splash_bg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 156.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Signup/Login Shadow' (shape)
                            Container(
                          decoration: BoxDecoration(
                            color: const Color(0x33000000),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 31.5, end: 31.5),
                        Pin(size: 81.5, middle: 0.5772),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 18.0, start: 0.0),
                              child: Container(
                                child: Align(
                                  alignment: Alignment.center,
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontFamily: 'Spoqa Han Sans Neo',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: translate(context,'splash_first'),
                                    ),
                                    TextSpan(
                                      text: translate(context,'splash_second'),
                                      style: TextStyle(
                                        color: const Color(0xffffbb00),
                                      ),
                                    ),
                                  ],
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              ),
                            ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 35.5, end: 0.0),
                              child: PageLink(
                                links: [
                                  PageLinkInfo(
                                    transition: LinkTransition.Fade,
                                    ease: Curves.easeInOut,
                                    duration: 0.3,
                                    pageBuilder: () => Signing(),
                                  ),
                                ],
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(size: 83.0, start: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(size: 1.0, end: -1.0),
                                            child:
                                                // Adobe XD layer: 'Default Line: Gray' (shape)
                                                SvgPicture.string(
                                              _svg_dkq5k9,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 10.2, end: 10.5),
                                            Pin(size: 6.4, start: 5.3),
                                            child: SvgPicture.string(
                                              _svg_i0hz,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 29.0, start: 10.5),
                                            Pin(size: 21.0, start: 0.0),
                                            child: Text(
                                              '+20',
                                              style: TextStyle(
                                                fontFamily:
                                                    'Spoqa Han Sans Neo',
                                                fontSize: 16,
                                                color: const Color(0xccffffff),
                                                fontWeight: FontWeight.w700,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 94.0, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.0, end: 0.0),
                                            Pin(size: 1.0, end: -1.0),
                                            child:
                                                // Adobe XD layer: 'Default Line: Gray' (shape)
                                                SvgPicture.string(
                                              _svg_tmx31n,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 119.0, start: 9.5),
                                            Pin(size: 21.0, start: 0.0),
                                            child: Text(
                                              translate(context,'splash_third'),
                                              style: TextStyle(
                                                fontFamily:
                                                    'Spoqa Han Sans Neo',
                                                fontSize: 17,
                                                color: const Color(0xff9fa0b1),
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 96.0, middle: 0.3534),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 109.7, middle: 0.5014),
                        Pin(start: 0.4, end: 0.5),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 29.7, start: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 8.2, end: 12.1),
                                    Pin(size: 6.7, end: 0.5),
                                    child: SvgPicture.string(
                                      _svg_pef2hv,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 34.4, end: 0.0),
                                    Pin(start: 0.0, end: 0.4),
                                    child: SvgPicture.string(
                                      _svg_jsmxl0,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 27.8, middle: 0.5542),
                                    Pin(start: 0.5, end: 0.4),
                                    child: SvgPicture.string(
                                      _svg_e9360l,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 6.9, middle: 0.3259),
                                    Pin(start: 0.5, end: 0.5),
                                    child: SvgPicture.string(
                                      _svg_dnjqgf,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 28.1, start: 0.0),
                                    Pin(start: 0.5, end: 0.0),
                                    child: SvgPicture.string(
                                      _svg_bgngk5,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 60.9, middle: 0.4912),
                              Pin(size: 50.5, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 1.4),
                                    Pin(size: 34.4, end: 0.0),
                                    child: SvgPicture.string(
                                      _svg_msaj9f,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 13.6, middle: 0.4969),
                                    Pin(size: 21.8, middle: 0.5012),
                                    child: SvgPicture.string(
                                      _svg_ktkyv,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 1.3, end: 0.0),
                                    Pin(size: 34.5, start: 0.0),
                                    child: SvgPicture.string(
                                      _svg_bqo69e,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_dkq5k9 =
    '<svg viewBox="31.5 780.5 83.0 1.0" ><path transform="translate(31.5, 780.5)" d="M 0 0 L 83 0" fill="none" stroke="#c2c9d9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i0hz =
    '<svg viewBox="93.7 750.3 10.2 6.4" ><path transform="translate(-1879.27, 339.51)" d="M 1978.239013671875 415.135009765625 L 1982.598999023438 410.7749938964844 L 1983.25 412.1130065917969 L 1978.149047851562 417.2139892578125 C 1976.550048828125 415.697998046875 1974.859008789062 413.9230041503906 1973.001953125 412.1090087890625 L 1974.10302734375 410.9830017089844 L 1978.239013671875 415.135009765625 Z" fill="#9fa0b1" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tmx31n =
    '<svg viewBox="125.5 780.5 218.0 1.0" ><path transform="translate(125.5, 780.5)" d="M 0 0 L 218 0" fill="none" stroke="#c2c9d9" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pef2hv =
    '<svg viewBox="222.5 275.9 8.2 6.7" ><defs><linearGradient id="gradient" x1="-0.016788" y1="0.0" x2="3.913959" y2="0.987857"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-2619.34, 713.57)" d="M 2845.8955078125 -437.710205078125 L 2841.8056640625 -430.9833984375 L 2849.9765625 -430.973876953125 L 2845.8955078125 -437.710205078125 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_jsmxl0 =
    '<svg viewBox="208.3 253.4 34.4 29.3" ><defs><linearGradient id="gradient" x1="-0.016788" y1="0.0" x2="3.913959" y2="0.987857"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-2595.28, 753.84)" d="M 2815.5244140625 -491.4467163085938 L 2819.535400390625 -484.5877075195312 L 2811.676513671875 -471.2464599609375 L 2803.6142578125 -471.2464599609375 L 2815.5244140625 -491.4467163085938 Z M 2838.0078125 -471.20458984375 L 2829.94677734375 -471.20458984375 L 2828.28564453125 -474.04833984375 L 2816.8203125 -493.6631469726562 L 2820.8310546875 -500.4801025390625 L 2838.0078125 -471.20458984375 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_e9360l =
    '<svg viewBox="178.4 253.9 27.8 28.7" ><defs><linearGradient id="gradient" x1="-0.016788" y1="0.0" x2="3.913959" y2="0.987857"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-2543.55, 752.83)" d="M 2747.317626953125 -492.67138671875 C 2748.8974609375 -490.2857055664062 2749.75 -487.4822692871094 2749.75 -484.5528259277344 C 2749.75 -481.6653137207031 2748.8974609375 -478.8614807128906 2747.317626953125 -476.4761962890625 C 2747.278076171875 -476.4344177246094 2747.237060546875 -476.3925170898438 2747.1962890625 -476.3509216308594 C 2744.6025390625 -472.500732421875 2740.349609375 -470.1995544433594 2735.814208984375 -470.1995544433594 L 2721.958984375 -470.1995544433594 L 2721.958984375 -487.5661315917969 L 2728.88671875 -480.409912109375 L 2728.88671875 -477.3550415039062 L 2735.814208984375 -477.3550415039062 L 2736.300537109375 -477.3550415039062 C 2738.40576171875 -477.4807434082031 2740.30908203125 -478.6104431152344 2741.526611328125 -480.409912109375 L 2741.526611328125 -480.4519348144531 C 2742.2958984375 -481.6653137207031 2742.69970703125 -483.0881042480469 2742.69970703125 -484.5528259277344 C 2742.69970703125 -486.0174865722656 2742.2958984375 -487.4400329589844 2741.484375 -488.6538696289062 C 2740.1884765625 -490.5785217285156 2738.08203125 -491.7504577636719 2735.814208984375 -491.7504577636719 L 2728.88671875 -491.7504577636719 L 2728.88671875 -483.6322631835938 L 2721.958984375 -490.7877807617188 L 2721.958984375 -498.9480590820312 L 2735.814208984375 -498.9480590820312 C 2740.349609375 -498.9480590820312 2744.6025390625 -496.6463012695312 2747.1962890625 -492.7967529296875 L 2747.317626953125 -492.67138671875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_dnjqgf =
    '<svg viewBox="166.5 253.8 6.9 28.7" ><defs><linearGradient id="gradient" x1="-0.016788" y1="0.0" x2="3.913959" y2="0.987857"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-2523.63, 752.91)" d="M 2697.032958984375 -499.0661010742188 L 2697.032958984375 -488.3948364257812 L 2690.14453125 -495.5089111328125 L 2690.14453125 -499.0661010742188 L 2697.032958984375 -499.0661010742188 Z M 2690.14453125 -492.244873046875 L 2697.032958984375 -485.131103515625 L 2697.032958984375 -470.3171691894531 L 2690.14453125 -470.3171691894531 L 2690.14453125 -492.244873046875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bgngk5 =
    '<svg viewBox="133.0 253.8 28.1 29.2" ><defs><linearGradient id="gradient" x1="-0.016788" y1="0.0" x2="3.913959" y2="0.987857"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-2463.59, 752.91)" d="M 2624.09716796875 -481.3744201660156 C 2624.34033203125 -480.5380249023438 2624.46240234375 -479.6594543457031 2624.46240234375 -478.7814331054688 C 2624.46240234375 -477.9031982421875 2624.34033203125 -477.0247192382812 2624.09716796875 -476.188232421875 C 2623.5703125 -474.3897094726562 2622.47705078125 -472.7587890625 2621.01806640625 -471.6293029785156 C 2619.51904296875 -470.4583129882812 2617.696044921875 -469.8310546875 2615.7919921875 -469.8310546875 L 2596.62890625 -469.8310546875 L 2596.62890625 -476.9412841796875 L 2615.7919921875 -476.9412841796875 C 2616.76416015625 -476.9412841796875 2617.574951171875 -477.7774658203125 2617.574951171875 -478.7814331054688 C 2617.574951171875 -479.7852172851562 2616.76416015625 -480.6213684082031 2615.7919921875 -480.6213684082031 L 2605.298583984375 -480.6213684082031 C 2604.44970703125 -480.6213684082031 2603.59814453125 -480.7471313476562 2602.7880859375 -480.9981079101562 C 2601.4111328125 -481.4163818359375 2600.15478515625 -482.2109985351562 2599.14208984375 -483.256591796875 C 2598.12890625 -484.3018188476562 2597.359375 -485.5987548828125 2596.952880859375 -487.0206909179688 C 2596.7109375 -487.8572387695312 2596.58984375 -488.7354736328125 2596.58984375 -489.6138916015625 C 2596.58984375 -490.4921875 2596.7109375 -491.3702392578125 2596.952880859375 -492.2069091796875 C 2597.359375 -493.6292114257812 2598.12890625 -494.9255981445312 2599.14208984375 -495.9707641601562 C 2600.15478515625 -497.0165405273438 2601.4111328125 -497.8113403320312 2602.7880859375 -498.2294311523438 C 2602.9912109375 -498.3131713867188 2603.1923828125 -498.355224609375 2603.395263671875 -498.3966064453125 L 2603.678955078125 -498.4807739257812 L 2610.4453125 -491.4960327148438 L 2605.298583984375 -491.4960327148438 C 2604.328125 -491.4960327148438 2603.517578125 -490.6593627929688 2603.517578125 -489.6554565429688 C 2603.517578125 -488.6517944335938 2604.328125 -487.8153076171875 2605.298583984375 -487.8153076171875 L 2615.7919921875 -487.8153076171875 L 2615.91455078125 -487.8153076171875 L 2615.954345703125 -487.8153076171875 L 2616.075439453125 -487.8153076171875 L 2616.15673828125 -487.8153076171875 L 2616.39990234375 -487.8153076171875 L 2616.520751953125 -487.8153076171875 L 2616.5625 -487.8153076171875 L 2616.68310546875 -487.8153076171875 L 2616.9267578125 -487.8153076171875 L 2617.04736328125 -487.8153076171875 L 2617.08935546875 -487.8153076171875 L 2617.3310546875 -487.8153076171875 L 2617.452880859375 -487.8153076171875 L 2617.696044921875 -487.8153076171875 L 2617.73681640625 -487.8153076171875 C 2617.81640625 -487.8153076171875 2617.8984375 -487.7734985351562 2617.9794921875 -487.7315673828125 L 2618.01953125 -487.7315673828125 L 2618.10107421875 -487.689697265625 L 2618.222412109375 -487.689697265625 C 2618.30322265625 -487.648193359375 2618.384765625 -487.6061401367188 2618.4658203125 -487.564453125 L 2618.505859375 -487.564453125 C 2618.668212890625 -487.5224609375 2618.83056640625 -487.4807739257812 2618.99365234375 -487.4387817382812 L 2619.03369140625 -487.4387817382812 C 2619.11376953125 -487.397216796875 2619.1953125 -487.3554077148438 2619.2763671875 -487.3134765625 L 2619.31640625 -487.3134765625 C 2619.4384765625 -487.2716064453125 2619.559814453125 -487.2296142578125 2619.681640625 -487.1879272460938 L 2619.802978515625 -487.1879272460938 C 2619.883544921875 -487.1461791992188 2619.96435546875 -487.1043090820312 2620.04541015625 -487.0628051757812 C 2620.166748046875 -486.9788208007812 2620.28955078125 -486.8953247070312 2620.41015625 -486.8115234375 L 2620.612548828125 -486.6861877441406 C 2620.69384765625 -486.6443481445312 2620.77490234375 -486.6023559570312 2620.85546875 -486.5606994628906 C 2620.9375 -486.5187377929688 2621.01806640625 -486.4768676757812 2621.098876953125 -486.4353637695312 L 2621.14013671875 -486.3934326171875 C 2621.3017578125 -486.2677917480469 2621.462890625 -486.142578125 2621.62548828125 -486.0169067382812 C 2621.665771484375 -485.9750366210938 2621.74755859375 -485.9335327148438 2621.82763671875 -485.849609375 C 2621.868408203125 -485.8079223632812 2621.9111328125 -485.7660522460938 2621.94873046875 -485.7240905761719 L 2622.03076171875 -485.6407165527344 C 2622.07080078125 -485.6407165527344 2622.11279296875 -485.6407165527344 2622.1513671875 -485.5987548828125 C 2622.193115234375 -485.5566101074219 2622.23291015625 -485.5148315429688 2622.275146484375 -485.4733581542969 C 2622.396484375 -485.34765625 2622.51708984375 -485.2223205566406 2622.638671875 -485.0968627929688 L 2622.759765625 -484.9714965820312 L 2622.8408203125 -484.8876953125 L 2622.8408203125 -484.7620849609375 L 2622.962158203125 -484.6367492675781 L 2623.00341796875 -484.5949096679688 C 2623.042724609375 -484.5110473632812 2623.08447265625 -484.4275512695312 2623.12451171875 -484.3438720703125 C 2623.1650390625 -484.3018188476562 2623.20556640625 -484.2605590820312 2623.245849609375 -484.2184753417969 C 2623.28662109375 -484.1764831542969 2623.3271484375 -484.1348266601562 2623.36767578125 -484.0929565429688 L 2623.40869140625 -484.009521484375 L 2623.7724609375 -483.256591796875 L 2623.81396484375 -483.2147827148438 C 2623.89453125 -483.0472106933594 2623.9755859375 -482.8799438476562 2624.0556640625 -482.7129516601562 L 2624.09716796875 -482.6290893554688 L 2624.218505859375 -482.2528686523438 L 2624.218505859375 -482.1272583007812 L 2624.34033203125 -481.8342590332031 L 2624.09716796875 -481.3744201660156 Z M 2624.7041015625 -499.0661010742188 L 2624.7041015625 -491.9558715820312 L 2613.84716796875 -491.9558715820312 L 2606.9619140625 -499.0661010742188 L 2624.7041015625 -499.0661010742188 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_msaj9f =
    '<svg viewBox="157.0 314.1 59.5 34.4" ><defs><linearGradient id="gradient" x1="0.090068" y1="-0.174235" x2="0.797175" y2="1.047564"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-48.63, -105.71)" d="M 205.6300048828125 451.3672485351562 C 210.4592895507812 445.46337890625 215.2885437011719 439.5595092773438 220.159912109375 433.6041564941406 C 221.6041717529297 436.1026000976562 223.0145568847656 438.5433959960938 224.4261169433594 440.9834899902344 C 225.1186065673828 442.1804809570312 225.8268737792969 443.3687744140625 226.4981689453125 444.5776062011719 C 226.6866455078125 444.9169311523438 226.9004058837891 445.0234985351562 227.2829437255859 445.0226135253906 C 233.1147308349609 445.0096130371094 238.9465789794922 445.0084228515625 244.7783508300781 445.0246887207031 C 245.1934814453125 445.0258178710938 245.4090423583984 444.8940734863281 245.6106872558594 444.543701171875 C 250.2113647460938 436.553466796875 254.8231658935547 428.5696716308594 259.4336853027344 420.5851745605469 C 259.5685729980469 420.3515319824219 259.7131652832031 420.12353515625 259.9016723632812 419.8130493164062 C 260.4685668945312 420.7737121582031 261.0120544433594 421.6806640625 261.5418701171875 422.5955505371094 C 262.6855773925781 424.5699768066406 263.8167419433594 426.5516357421875 264.9674377441406 428.5219116210938 C 265.1524963378906 428.8388671875 265.1828002929688 429.0699157714844 264.9810485839844 429.4182739257812 C 260.285400390625 437.5207824707031 255.6041870117188 445.6317443847656 250.9357299804688 453.7500610351562 C 250.7136077880859 454.1361694335938 250.4637756347656 454.2395629882812 250.0447845458984 454.2391052246094 C 240.7180633544922 454.2283325195312 231.3913116455078 454.22705078125 222.0646057128906 454.2422790527344 C 221.6057586669922 454.2429504394531 221.3635711669922 454.1085815429688 221.1372985839844 453.7079467773438 C 219.9009399414062 451.5191650390625 218.6306304931641 449.3494567871094 217.3459930419922 447.1283569335938 C 215.8056793212891 447.7118835449219 214.2920837402344 448.2908020019531 212.7743072509766 448.8587036132812 C 210.4300689697266 449.73583984375 208.0830383300781 450.6053466796875 205.7373046875 451.4781188964844 C 205.7015380859375 451.441162109375 205.665771484375 451.4042053222656 205.6300048828125 451.3672485351562 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ktkyv =
    '<svg viewBox="180.5 312.4 13.6 21.8" ><defs><linearGradient id="gradient" x1="0.130869" y1="0.269528" x2="0.837975" y2="0.711025"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-261.47, -90.13)" d="M 452.8788146972656 407.7864685058594 C 451.578369140625 406.0862426757812 450.2007751464844 405.2359313964844 448.7460021972656 405.2359313964844 C 447.6184387207031 405.2359313964844 446.6592102050781 405.6361389160156 445.8681945800781 406.4361877441406 C 445.0678405761719 407.2364807128906 444.6679382324219 408.2003173828125 444.6679382324219 409.3276977539062 C 444.6679382324219 410.1552734375 444.8951110839844 410.9098205566406 445.349853515625 411.5917663574219 L 449.7145080566406 416.5428771972656 C 449.9780578613281 416.8157043457031 450.1099853515625 417.1386413574219 450.1099853515625 417.5113525390625 C 450.1099853515625 417.8843688964844 449.9780578613281 418.2070007324219 449.7145080566406 418.4797973632812 C 449.4505920410156 418.7436218261719 449.1279602050781 418.8753356933594 448.7460021972656 418.8753356933594 C 448.3457641601562 418.8753356933594 448.009521484375 418.7207641601562 447.7367248535156 418.41162109375 L 443.3038940429688 413.4058837890625 C 442.3945922851562 412.1966247558594 441.9400329589844 410.8371887207031 441.9400329589844 409.3276977539062 C 441.9400329589844 407.5 442.6718444824219 405.890625 444.1358642578125 404.4993286132812 C 445.5361022949219 403.1718444824219 447.0728454589844 402.5080261230469 448.7460021972656 402.5080261230469 C 450.146240234375 402.5080261230469 451.3601379394531 402.8308715820312 452.3878784179688 403.4763488769531 C 453.1697387695312 403.9674682617188 453.9972534179688 404.7676086425781 454.8702087402344 405.8769226074219 C 455.1883544921875 406.2772521972656 455.3476257324219 406.6498718261719 455.3476257324219 406.995361328125 C 455.3476257324219 407.3772888183594 455.215576171875 407.7001342773438 454.9519653320312 407.9638061523438 C 454.6882019042969 408.2276306152344 454.3655700683594 408.3592529296875 453.9836120605469 408.3592529296875 C 453.5198364257812 408.3592529296875 453.1515808105469 408.1684265136719 452.8788146972656 407.7864685058594 Z M 444.6270141601562 419.0526733398438 C 445.9271850585938 420.7530822753906 447.3003234863281 421.6032409667969 448.7460021972656 421.6032409667969 C 449.8825988769531 421.6032409667969 450.8465576171875 421.2030944824219 451.6376647949219 420.4029541015625 C 452.4377746582031 419.6028747558594 452.8378601074219 418.6390380859375 452.8378601074219 417.5113525390625 C 452.8378601074219 416.5750122070312 452.6105041503906 415.8201293945312 452.1559143066406 415.2471618652344 L 447.7912902832031 410.2961120605469 C 447.5274353027344 410.0232543945312 447.3958129882812 409.7005920410156 447.3958129882812 409.3276977539062 C 447.3958129882812 408.9549560546875 447.5274353027344 408.6321411132812 447.7912902832031 408.3592529296875 C 448.0549011230469 408.095703125 448.3731689453125 407.9638061523438 448.7460021972656 407.9638061523438 C 449.1552429199219 407.9638061523438 449.4961853027344 408.1185607910156 449.7689514160156 408.4275207519531 L 454.2017822265625 413.4332885742188 C 455.1109924316406 414.4881286621094 455.5657348632812 415.8473510742188 455.5657348632812 417.5113525390625 C 455.5657348632812 419.3390502929688 454.833740234375 420.9440307617188 453.3698120117188 422.3261108398438 C 451.969482421875 423.6627807617188 450.4281616210938 424.3311462402344 448.7460021972656 424.3311462402344 C 447.3548583984375 424.3311462402344 446.1454467773438 424.0084838867188 445.1180114746094 423.3626403808594 C 444.3358459472656 422.8716430664062 443.508544921875 422.0717163085938 442.6355895996094 420.9621887207031 C 442.3171997070312 420.5620727539062 442.1581726074219 420.1893615722656 442.1581726074219 419.84375 C 442.1581726074219 419.4618530273438 442.2899169921875 419.13916015625 442.5538330078125 418.8753356933594 C 442.8173828125 418.6116333007812 443.1403198242188 418.4797973632812 443.5221557617188 418.4797973632812 C 443.9859619140625 418.4797973632812 444.3542175292969 418.6707153320312 444.6270141601562 419.0526733398438 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_bqo69e =
    '<svg viewBox="158.3 298.0 59.5 34.5" ><defs><linearGradient id="gradient" x1="0.203824" y1="-0.046151" x2="0.910931" y2="1.174823"><stop offset="0.0" stop-color="#ffffc835"  /><stop offset="1.0" stop-color="#fffeb645"  /></linearGradient></defs><path transform="translate(-60.73, 40.39)" d="M 224.2799224853516 292.0737915039062 C 223.7560119628906 291.1771240234375 223.2485046386719 290.3165893554688 222.7487335205078 289.4516296386719 C 221.564453125 287.4019165039062 220.3909912109375 285.3460388183594 219.1942901611328 283.3036804199219 C 219.0118865966797 282.9925537109375 219.01953125 282.7637939453125 219.1966705322266 282.4580383300781 C 223.9117889404297 274.3197631835938 228.6199340820312 266.1773986816406 233.3178863525391 258.0292053222656 C 233.5005798339844 257.7124328613281 233.6960754394531 257.5964050292969 234.0585327148438 257.5968322753906 C 243.4501190185547 257.6061401367188 252.8418273925781 257.6063537597656 262.2334289550781 257.5960083007812 C 262.5956115722656 257.5956115722656 262.7906188964844 257.7127380371094 262.9673156738281 258.0239562988281 C 264.1166381835938 260.0473327636719 265.2856750488281 262.0597229003906 266.4501953125 264.0745544433594 C 266.5740356445312 264.2888488769531 266.7105407714844 264.495849609375 266.8640747070312 264.7431945800781 C 270.7587890625 263.2640991210938 274.6286926269531 261.794189453125 278.49853515625 260.3244018554688 C 278.5304260253906 260.3663330078125 278.5623168945312 260.4081115722656 278.5941162109375 260.449951171875 C 273.7620544433594 266.3616027832031 268.929931640625 272.2732849121094 264.0414428710938 278.2538757324219 C 263.8982238769531 278.0243225097656 263.7784118652344 277.8436279296875 263.6698303222656 277.6564636230469 C 261.6607360839844 274.1921997070312 259.6463012695312 270.7308959960938 257.6553649902344 267.2563171386719 C 257.4584045410156 266.9125061035156 257.2519836425781 266.8097839355469 256.8730163574219 266.8106079101562 C 251.0612030029297 266.8224182128906 245.2493133544922 266.8257751464844 239.4375152587891 266.8056945800781 C 238.9757995605469 266.8041381835938 238.7726745605469 266.9947509765625 238.5675354003906 267.3502807617188 C 233.8857879638672 275.4683837890625 229.1956024169922 283.5815124511719 224.5068054199219 291.6954650878906 C 224.4446258544922 291.8029479980469 224.3791656494141 291.9085388183594 224.2799224853516 292.0737915039062 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
