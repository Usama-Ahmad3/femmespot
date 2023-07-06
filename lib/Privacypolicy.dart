import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, backgroundColor: Colors.transparent, iconTheme: IconThemeData(color: Colors.black),
        title: Text('Privacy Policy', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 18),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('At Keybotix, accessible from https://keybotix.com/, one of our main priorities is the privacy of our visitors.'
                  ' This Privacy Policy document contains types of information that is collected and recorded by Keybotix and how we use it.',
              style: TextStyle(fontSize: 12),textAlign: TextAlign.justify,
              ),
              Text('If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.',
                style: TextStyle(fontSize: 12),textAlign: TextAlign.justify,
              ),
              Text('This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Keybotix. '
                  'This policy is not applicable to any information collected offline or via channels other than this website.',
                style: TextStyle(fontSize: 12),textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10,),
              Text('1. Consent', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
              SizedBox(height: 10,),
              Text('By using our website, you hereby consent to our Privacy Policy and agree to its terms.', style: TextStyle(fontSize: 12),),
              SizedBox(height: 10,),
              Text('2. Information we Collect', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),
              SizedBox(height: 10,),
              Text('The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.',
                style: TextStyle(fontSize: 12),textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10,),
              Text('If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.',
                style: TextStyle(fontSize: 12),textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10,),
              Text('When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.',
                style: TextStyle(fontSize: 12),textAlign: TextAlign.justify,),
              SizedBox(height: 10,),
              Text('How we use your information',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900), ),
              SizedBox(height: 10,),
              Text('We use the information we collect in various ways, including to:', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
    );
  }
}
