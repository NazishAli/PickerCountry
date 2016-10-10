//
//  CodeViewController.m
//  FrameWork1
//
//  Created by Quickli on 05/10/16.
//  Copyright © 2016 Quickli. All rights reserved.
//

#import "CodeViewController.h"
#import "DeviceLibrary.h"

@interface CodeViewController ()

@property (strong, nonatomic) UISearchController *searchController;
@end

@implementation CodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    countryNameArray = [[NSMutableArray alloc]init];
    countryNameAndCodeDictionary= [[NSDictionary alloc]init];
    countrySearchNameArray = [[NSMutableArray alloc]init];
    
    countryNameArray = [[DeviceLibrary sharedManager] countrycodepickerarray];
    countryNameAndCodeDictionary = [[DeviceLibrary sharedManager] countryCodePickerDictionary];
   
    self.view.backgroundColor = [UIColor whiteColor];
    UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0,[[DeviceLibrary sharedManager] setWidth:414] , 64)];
    if(self.barTintColor)
      navBar.barTintColor = self.barTintColor;
    
    [self.view addSubview:navBar];
    
    if(self.tintColor)
        navBar.tintColor = self.tintColor;
    
   
    if(self.self.titleColor)
        [navBar setTitleTextAttributes:
     @{NSForegroundColorAttributeName:self.titleColor}];
    
    
    [self.view addSubview:navBar];
    
    UINavigationItem *navItem = [[UINavigationItem alloc] init];
    navItem.title = @"Your Country";
    // navItem.titleView. = [UIColor whiteColor];
    
    
    
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(cancelButtonFunction:)];
    navItem.leftBarButtonItem = leftButton;
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(doneButtonFunction:)];
    navItem.rightBarButtonItem = rightButton;
    
    navBar.items = @[ navItem ];
    

    // Do any additional setup after loading the view.
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//    // [button addTarget:self
//    //        action:@selector(aMethod:)
//    //  forControlEvents:UIControlEventTouchUpInside];
//    [button setTitle:@"Show View" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor redColor];
//    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
//    [self.view addSubview:button];
//    
//    UIImageView *dot =[[UIImageView alloc] initWithFrame:CGRectMake(50,50,60,60)];
//    dot.image=[UIImage imageNamed:@"FrameWork1.bundle/RWRibbon"];
//    dot.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:dot];
    
    
    
   countryTableView=[[UITableView alloc] init];
    [countryTableView setFrame:CGRectMake(0, 64, [[DeviceLibrary sharedManager] setWidth:414],[[DeviceLibrary sharedManager] setHeight:736] - 64)];
    [countryTableView setTag:1];
    [countryTableView setBackgroundColor:[UIColor clearColor]];
  
    [countryTableView setDelegate:self];
    [countryTableView setDataSource:self];
    [self.view addSubview:countryTableView];
    
    self.searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    self.searchController.searchResultsUpdater = self;
    self.searchController.dimsBackgroundDuringPresentation = NO;
    self.searchController.searchBar.delegate = self;
    [self.searchController.searchBar sizeToFit];
    countryTableView.tableHeaderView = self.searchController.searchBar;
}

-(void)cancelButtonFunction:(UIBarButtonItem *)sender
{
    if (self.searchController.active)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }

    [self dismissViewControllerAnimated:YES completion:NULL];
}

-(void)doneButtonFunction:(UIBarButtonItem *)sender
{
    if (self.searchController.active)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }

    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    NSPredicate *prdicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@",searchController.searchBar.text];
    countrySearchNameArray = [[countryNameArray filteredArrayUsingPredicate:prdicate] mutableCopy];
    
    if([searchController.searchBar.text isEqualToString:@""])
    {
        countrySearchNameArray = countryNameArray;
    }
    
    [countryTableView reloadData];
}


#pragma mark - Table View Data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.searchController.active && ![self.searchController.searchBar.text isEqualToString:@""])
    {
        return countrySearchNameArray.count;
    }
    
    return countryNameArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier=@"cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    else {
        
        UILabel *countryLabel=(UILabel *)[cell.contentView viewWithTag:101];
        [countryLabel removeFromSuperview];
        countryLabel=nil;
        
        UILabel *countryCodeLabel=(UILabel *)[cell.contentView viewWithTag:102];
        [countryCodeLabel removeFromSuperview];
        countryCodeLabel=nil;
    }
    
    UILabel *countryLabel=[[UILabel alloc] init];
    [countryLabel setTag:101];
    [countryLabel setBackgroundColor:[UIColor clearColor]];
   
    
    [countryLabel setFrame:CGRectMake(15 , 10,[[DeviceLibrary sharedManager] setWidth:(300)],25)];
 
    [countryLabel setFont:[UIFont systemFontOfSize:[[DeviceLibrary sharedManager] setFont:17]]];
    //[countryLabel sizeToFit];
   
    
    UILabel *countryCodeLabel=[[UILabel alloc] init];
    [countryCodeLabel setTag:102];
    [countryCodeLabel setBackgroundColor:[UIColor clearColor]];
    
    
    
    [countryCodeLabel setFrame:CGRectMake([[DeviceLibrary sharedManager] setWidth:(414 - 200)], 10,[[DeviceLibrary sharedManager] setWidth:(180)],25)];
  
       countryCodeLabel.textAlignment = NSTextAlignmentRight;
       [countryCodeLabel setFont:[UIFont systemFontOfSize:[[DeviceLibrary sharedManager] setFont:17]]];
   
    
    @try {
        if (self.searchController.active && ![self.searchController.searchBar.text isEqualToString:@""])
        {
            [countryLabel setText:[NSString stringWithFormat:@"%@",[countrySearchNameArray objectAtIndex:indexPath.row]]];
           [countryCodeLabel setText:[NSString stringWithFormat:@"+%@",[countryNameAndCodeDictionary objectForKey:[NSString stringWithFormat:@"%@",[countrySearchNameArray objectAtIndex:indexPath.row]]] ]];
            
        }
        else
        {
            NSLog(@"%@", [countryNameArray objectAtIndex:indexPath.row]);
           
            [countryLabel setText:[NSString stringWithFormat:@"%@",[countryNameArray objectAtIndex:indexPath.row]]];
            [countryCodeLabel setText:[NSString stringWithFormat:@"+%@",[countryNameAndCodeDictionary objectForKey:[NSString stringWithFormat:@"%@",[countryNameArray objectAtIndex:indexPath.row]]] ]];
            
            
        }
        
    } @catch (NSException *exception) {
        
    } 

    [cell.contentView addSubview:countryLabel];
    [cell.contentView addSubview:countryCodeLabel];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary *dictionary;
    @try {
        if (self.searchController.active && ![self.searchController.searchBar.text isEqualToString:@""])
        {
            dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[countrySearchNameArray objectAtIndex:indexPath.row],@"Country", [countryNameAndCodeDictionary objectForKey:[NSString stringWithFormat:@"%@",[countrySearchNameArray objectAtIndex:indexPath.row]]], @"CountryCode",nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"SelectCountry" object:self userInfo:dictionary];
            [self dismissViewControllerAnimated:YES completion:nil];
            
        }
        else
        {
            dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[countryNameArray objectAtIndex:indexPath.row],@"Country", [countryNameAndCodeDictionary objectForKey:[NSString stringWithFormat:@"%@",[countryNameArray objectAtIndex:indexPath.row]]], @"CountryCode",nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"SelectCountry" object:self userInfo:dictionary];
            [self dismissViewControllerAnimated:YES completion:nil];
            
        }
        
    } @catch (NSException *exception) {
        
    }
    
    
    
    //[self.searchController.searchBar becomeFirstResponder];
    [self dismissViewControllerAnimated:YES completion:nil];
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
