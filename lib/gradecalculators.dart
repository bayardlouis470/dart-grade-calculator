import 'src/parser.dart' as parser;

class GradeCalculator {
  double calculate(String csv) {
    var assessments = parser.parse(csv);

    var grades = .0, weights = .0;
    for (var i = 0; i < assessments.length; i++) {
      grades +=
          num.parse(assessments[i].grade) * num.parse(assessments[i].weight);
      weights += num.parse(assessments[i].weight);
    }
    return grades / weights;
  }
}
