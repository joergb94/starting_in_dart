class Person {
  //input or propierties
  String? name;
  int? age;
  String _job = 'Worckler'; // propiertie private

  //Constructors
  Person({
    this.name = "Guest",
    this.age = 0,
  });

  Person.noageAndjob(this.name) {
    this.age = 0;
    this._job = 'new job';
  }
  //getters and setters
  String get job => _job.toUpperCase();

  set set_job(String value) => _job = value;

  //method
  @override
  String toString() {
    return "${this.name} ${this.age}";
  }
}
