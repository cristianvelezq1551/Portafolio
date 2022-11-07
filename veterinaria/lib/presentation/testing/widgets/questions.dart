part of '../testing_screen.dart';

class Card extends StatefulWidget {
  final PageController controller;
  final String question;
  final String answer1;
  final String answer2;

  const Card(this.controller, this.question, this.answer1, this.answer2);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        color: Color(0xff90c9c2),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'assets/fondoQ.jpg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: kToolbarHeight * 1.2),
                        Container(
                          height: kToolbarHeight * 2.2,
                          child: Text(
                            widget.question,
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: kToolbarHeight * 0.7),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: MaterialButton(
                            height: size.height * 0.07,
                            onPressed: () {
                              widget.controller.nextPage(
                                  curve: Curves.easeIn,
                                  duration: Duration(seconds: 2));
                            },
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                widget.answer1,
                                style: TextStyle(
                                    color: AppColors.principal,
                                    fontSize: kToolbarHeight * 0.4,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: kToolbarHeight * 0.4),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: MaterialButton(
                            height: size.height * 0.07,
                            onPressed: () {
                              widget.controller.nextPage(
                                  curve: Curves.easeIn,
                                  duration: Duration(seconds: 3));
                            },
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                widget.answer2,
                                style: TextStyle(
                                    color: AppColors.principal,
                                    fontSize: kToolbarHeight * 0.4,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

List<String> _Question = [
  'Take the survey, it can be usefull for you',
  'Do you have a  pet?',
  'What kind of pet do you have?',
  'What gender is your dog?'
];

List<String> _answer1 = ['Great Idea', 'Yes, I have', 'Cat', 'Male?'];

List<String> _answer2 = ['Not now', 'No, I dont', 'Dog', 'Female'];
