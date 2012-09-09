//
//  SearchViewController.h
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/9/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <UIKit/UIKit.h>
#import "ButtonCell.h"
#import "PrettyViews.h"
#import "SearchManager.h"

@interface SearchViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, ButtonCellDelegate>
{
    IBOutlet UIView *_header;
    IBOutlet UIButton *_searchButton;
    
    SearchManager *searchManager;
    
    AdvGroup *advGroup;
}
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
