import 'package:flutter/material.dart';

class ArabicTextScreen extends StatelessWidget {
  static const String routeName = "ArabicTextScreen";
  const ArabicTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFECDB),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              AppBar(
                title: const Text("Arabic Summarization",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                backgroundColor: Colors.blue,
                centerTitle: true,
                flexibleSpace: const SizedBox(
                  height: 150,
                ),

              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(18),
            margin: const EdgeInsets.only(
                top: 110, left: 40, right: 40, bottom: 100),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: const SingleChildScrollView(
              child: Text("""Deep laughter causes our muscles to relax, which helps to cope with stress. During laughter our body releases chemicals that are associated with positive events and emotions. This can also reduce anxiety and physical pain. Like yoga, the physical act of laughter involves deep breathing. The oxygen flow throughout our body is increased, and when we breathe out, the 'old' air in our lungs is released. Mentally, laughter can help us feel more positive about life, ready to face challenges and deal with difficult situations more calmly. There are many free videos on different social media platforms with Dr Kataria but – warn your housemates or family members – "
                  "you will probably laugh loudly and keep laughing!Some people think that deep laughter can help with the recovery from serious illness. Norman Cousins, a famous 20th-century writer, certainly believed this. In his late forties and following an extremely stressful time in his professional life, Cousins was diagnosed with a serious illness. He moved with difficulty, he was in constant pain and he was told he had a limited time to live. 
    However, Cousins thought that if stress or negative emotions had caused his illness, then maybe positive emotions could help him get better – and daily laughter became part of this approach. For months, from his sickbed, Cousins watched comedy films that made him laugh out loud. He became convinced that ten minutes of deep 'belly' laughter resulted in two hours of painless sleep, so decided to stop taking powerful painkillers and sleeping pills. Instead, he used laughter and high doses of Vitamin C to help his recovery. Amazingly, within six months he was up and about, and within two years back at work.

    Whatever the case, if laughter helps us to cope with stress and makes us feel positive about life – then let's keep doing it!""",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
            ),
          )
        ],
      ),
    );

  }
}
