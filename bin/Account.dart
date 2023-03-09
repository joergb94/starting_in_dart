class Account {
  String headline;
  double quantity;

  Account(this.headline, [this.quantity = 0.0]);

  void get_into_account(double new_quantity) {
    if (new_quantity > 0) {
      this.quantity = this.quantity + new_quantity;
      showData();
    } else {
      print("it don't do anything");
    }
  }

  void subtract_into_account(double new_quantity) {
    if (new_quantity < this.quantity) {
      this.quantity = this.quantity - new_quantity;
      if (this.quantity > 0) {
        showData();
      }
    } else {
      print("it don't do anything");
    }
  }

  void showData() {
    print(this.headline);
    print(this.quantity);
    print('--------------');
  }
}

void main() {
  Account x = Account('ray', 30.5);
  x.showData();
  x.get_into_account(10);
  x.subtract_into_account(5);
}
