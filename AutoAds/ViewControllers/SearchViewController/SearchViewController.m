//
//  SearchViewController.m
//  AutoAds
//
//  Created by Vasilii Kasnitski on 9/9/12.
//  Copyright (c) 2012 Kyr Dunenkoff. All rights reserved.
//

#import "SearchViewController.h"
#import "CellHeightProtocol.h"

#import "ButtonCell.h"
#import "RubrikCell.h"

#define CITY 0
#define TYPE 2
#define ORIGIN 4
#define MODEL 6
#define PRICE 8
#define YEAR 10;

@interface SearchViewController ()

@end

@implementation SearchViewController
{
    
}

@synthesize tableView = _tableView;


#pragma mark - Initialization

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        searchManager = [SearchManager sharedMySingleton];
        fields = [[searchManager categoriesByRubric:nil subrubric:nil] getObligatoryFields];
    }
    return self;
}


#pragma mark - ViewController's lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"backgroundLight.png"]];
    [self.tableView setBackgroundView:iv];
    [_header setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"hugeHeader.png"]]];
    [_searchButton.titleLabel setFont:[UIFont fontWithName:FONT_DINPro_MEDIUM size:16.]];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navbarBackground.png"] forBarMetrics:UIBarMetricsDefault];
    
    UILabel *textLabel = [PrettyViews labelToNavigationBarWithTitle:@"Поиск"];
    self.navigationItem.titleView = textLabel;
    UIBarButtonItem *bbi = [PrettyViews backBarButtonWithTarget:self action:@selector(goBack:)];
    self.navigationItem.leftBarButtonItem = bbi;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


#pragma mark - Actions

- (void)goBack:(id)sender
{
    [self.tabBarController performSegueWithIdentifier:@"flipSegue" sender:self];
}


#pragma mark - @protocol ButtonCellDelegate <NSObject>

- (void)didTapButtonInButtonCell:(ButtonCell *)cell
{
    
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [fields count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id <CellHeightProtocol> cell = (id)[self tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ButtonCell";
    ButtonCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.delegate = self;
    
    AdvField *field = [fields objectAtIndex:indexPath.row];
    NSString *title = field.nameRussian;
    NSString *value = field.selectedValue == nil ? field.valueByDefault : field.selectedValue;
    
    [cell.textView setText:title];
    [cell.button setTitle:value forState:UIControlStateNormal];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    lastSelectedField = [fields objectAtIndex:indexPath.row];
    
    Search2ViewController *search2VC = [Search2ViewController new];
    search2VC.field = lastSelectedField;
    [self.navigationController pushViewController:search2VC animated:YES];
}

@end