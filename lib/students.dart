class Students {
  List<Map<String, dynamic>> people;

  Students(List<Map<String, dynamic>> this.people);

  sort(String fieldName){
    //sort the List based on the fieldName in each Map.
    //fieldName would be something like 'email' or 'first'

    //after sort call output()
  }
  output(){
    //loop and print each Map object properties and values
  }
  plus(Map<String, dynamic> person) {
    //add a person Map to the people List

    //last step is to call output
  }
  remove(String fieldName){
    //remove a key-value entry from any Map that contains a property with the name fieldName.
    //Eg: {id: 2, first:'Steve', last:'Griffith', email: 'griffis@algonquincollege.com'}
    // with field="email", remove the "email" property from EACH Map in the LIST

    //last step is to call output()
  }
}