import 'package:flutter/material.dart';
import 'package:tests/views/home/widgets/header.dart';
import 'package:tests/views/home/widgets/order.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/pw/ADCreHf96oIapH-TKqUrM4BRc855et7BLs9nBwBGVh1xlu-r17VGguqnVbYu1saZXiw0aEOxRe5ZHMgaLYQmvMMwg8cGG35gLnyzTRgYtYGhXMi-AZ5cEiHLd9gqvaBPjAz-i9UGS--TinHknmFrAZeGReO9QQD-4QyLDV2Fscmv5hgtvuCtdvMbXJ7tQ08UBiDNf99pQ7FPKtU2dmJlZCQTQ7wM8PR6SLnjEr5_inB0x23O9sXLEvMhRqZlXtsd_O52hfDXVvsN9SYGJspdo6g-ncG6tq0B3F9plZmP0tzT3URg4s4y0nZHl1rPeJflBd2jB5HO_faMI8xQck6tQr7DJO3KXNlomhsaaqshTE4BgSq_x5R9S78jW68BJtW_Nq8vHmbavu20nBeUHyDcmSUedOeTx-TxAXXI7iAn2sg1S0ztb7VglRAITlQo5xtcnnT-h9pQqO3jaVd3p1YWoChg4MR1ctDbcgbdIhLSjiAc9iaSruOWx3ONYxprJPAlGVWzohU-ZctsllyH73mxdefR3kA-AXprdtl_FPAO3CplzAUrxOtJ0RflWusCP80csa6jGCThJCiHCWb2KHTXQuC9RtfYbiiKDjDgKFe5gxGfWsTjH1GpjxB-QSOqyeWcvixomVhB-dtr5Ig0yn-S2WIjfab85ixIuqwjSnoRcIQeIgzEZuON94ktKI-aCctRdySWior7NmnsRmZ2OeRIX90e47UFQIUBwMwojNHoAmBoM6FutbOO_PxS2cto5FQq1DEGVnHLSdY7x7GZV85NQqH6TIPYA4iS3FR7dA1PeFtREgKezEn8Rff0qoABJe_E70bgTjsqhD3jbdt2VsaxHhQLRWevNp_ivodCBJZ-2nPHvCd2NOyc01jPQYV8_9PScxAwASUcXOStnSJBVQ-7Lh9aSBM0TQ=w760-h640-s-no-gm?authuser=0'),
                fit: BoxFit.fill)),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 350,
              ),
              Header(),
              SizedBox(
                height: 5,
              ),
              Order()
            ]),
          ),
        ),
      ),
    );
  }
}
