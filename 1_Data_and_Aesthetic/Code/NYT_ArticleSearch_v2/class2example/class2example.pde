int[] counts;

void setup() {
  size(500, 500);
  loadData();
}
void draw() {
  renderCircles(counts);
}
void loadData() {
  Table myTable = loadTable("monkeyData.csv");
  counts = new int[myTable.getRowCount()];
  
//  for (TableRow row:myTable.rows()) {
//    println(row.getInt(0));
//  }
  
  for(int i = 0; i < myTable.getRowCount(); i++){
    println(myTable.getRow(i).getInt(0));
    counts[i] = myTable.getRow(i).getInt(0);
  }
}

void renderCircles(int[] nums){
  for(int i = 0; i <nums.length; i++){
  ellipse( i* 10, 300, nums[i], nums[i]);
}
}

