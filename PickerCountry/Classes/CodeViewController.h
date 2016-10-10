//
//  CodeViewController.h
//  FrameWork1
//
//  Created by Quickli on 05/10/16.
//  Copyright © 2016 Quickli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CodeViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,UISearchControllerDelegate, UISearchBarDelegate, UISearchResultsUpdating>
{
    NSMutableArray *countryNameArray;
    NSDictionary *countryNameAndCodeDictionary;
    NSMutableArray *countrySearchNameArray;
    UITableView *countryTableView;
}
@property (nonatomic, strong)UIColor* barTintColor;
@property (nonatomic, strong)UIColor* tintColor;
@property (nonatomic, strong)UIColor* titleColor;
@end
