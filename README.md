# UITableViewBasicPractice

 
**Step 1**

    1. Add tableView in the storyboard
    2. Connect tableView to ViewController with @IBOutlet.

**Step 2**

    1. Add UITableViewCell in UITableView in the storyboard.

**Step 3**

    1. Add a new swift file.
    2. Choose Cocoa Touch Class. Name a class with name "NTUTableViewCell" and it inherits from UITableViewCell.
    3. Make cell on the storyboard mapping with NTUTableViewCell Class
    4. Connect a @IBOutlet with label named "NTULabel".

**Step 4**

    1. Add identifier "NTU" on the cell in the storyboard.
    2. Make ViewController conform with UITableViewDataSource.
    3. In the cellForRow method.
       Use tableView's dequeueReuseableCell(withIdentifier:, for:) method to create the cell tableView need.
    4. Set the numberOfRow method return 20.

**Step 5**

    1. Save view controller instance into tableView's dataSource property.

`tableView.dataSource = self`

**Step 6**

    1. Make ViewController conform UITableViewDelegate.
    2. In heightForRow method return 100 to control the height of UITableViewCell.

**Step 7**

    1. Type cast cell from UITableViewCell to NTUTableViewCell.
    2. Make ntuLabel's text display relative indexPath section and row.

**Step 8**

    1. Implement numberOfSection method. Return 3 in this method.

**Step 9**
    1. Add NTUHeaderView both swift file and xib.

**Step 10**

    1. Registe Header xib in UITableView.

**Step 11**

    1. Implement method `tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat` for header height.
    2. Implement method `tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?` for generate header view.

**Step 12**

    1. Type cast from UITableViewHeaderFooterView to NTUHeaderView.
    2. Make headerLabel display current section.

**Step 13**

    1. Add NTUFooterView swift and xib.
    2. Connect footLabel.

**Step 14**

    1. Establish footer view on the tableview.
    2. Make Footer display the section number.

**Step 15**

    1. Modify Tableview from plain style to group style.