class Scenario {
  final int id;
  final String name;
  final int numberOfPlannings;

  Scenario(
      {required this.id, required this.name, required this.numberOfPlannings});

  Scenario renameScenario(String newName) {
    return Scenario(
        id: id, name: newName, numberOfPlannings: numberOfPlannings);
  }
}
