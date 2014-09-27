//
//  TeamsTableTableViewController.m
//  ImpactApp
//
//  Created by Robert Kendall on 9/24/14.
//  Copyright (c) 2014 Robert Kendall. All rights reserved.
//

#import "TeamsTableTableViewController.h"
#import "TeamsModel.h"

@interface TeamsTableTableViewController (){
    NSArray *teamsArray;
}

@end

@implementation TeamsTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    TeamsModel *teamsModel = [[TeamsModel alloc] init];
    teamsArray = [teamsModel getTeamsArray];
    //NSLog(@"%@", teamsArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return [teamsArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [teamsArray[section] count] + [teamsArray[section][@"Students"] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.indentationWidth = 100;
    
    if(indexPath.row == 0){
        cell.textLabel.text = teamsArray[indexPath.section][@"Group Name"];
        cell.textLabel.backgroundColor = [UIColor yellowColor];
    }else if(indexPath.row == 1){
        cell.textLabel.text = teamsArray[indexPath.section][@"Leader"];
        cell.textLabel.backgroundColor = [UIColor greenColor];
    }else if(indexPath.row == 2){
        cell.textLabel.text = teamsArray[indexPath.section][@"Encourager"];
        cell.textLabel.backgroundColor = [UIColor blueColor];
    }else if(indexPath.row == [teamsArray[indexPath.section] count] + [teamsArray[indexPath.section][@"Students"] count]-1){
        cell.textLabel.text = @"";
    }else{
        //NSLog(@"%i", indexPath.row);
        cell.textLabel.text = teamsArray[indexPath.section][@"Students"][indexPath.row-3];
        cell.textLabel.backgroundColor = [UIColor redColor];
    }
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
