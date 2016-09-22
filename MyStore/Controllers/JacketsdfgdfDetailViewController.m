//
//  JacketsdfgdfDetailViewController.h
//  MyStore
//
//  This App has been generated using IBM Mobile App Builder
//

#import "JacketsdfgdfDetailViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "ROShareBehavior.h"
#import "ROTextStyle.h"
#import "ROImageCellDescriptor.h"
#import "ROTextCellDescriptor.h"
#import "ROHeaderCellDescriptor.h"
#import "ROOptionsFilter.h"
#import "ROSingleDataLoader.h"
#import "ProductsDSItem.h"
#import "ProductsDS.h"

@interface JacketsdfgdfDetailViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@end

@implementation JacketsdfgdfDetailViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:[[DatasourceManager sharedInstance] productsDS]
                                                           optionsFilter:self.optionsFilter];
    
        [self.behaviors addObject:[ROShareBehavior behaviorViewController:self]];
        
    }
    return self;
}

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {
        _optionsFilter = [ROOptionsFilter new];
    }
    return _optionsFilter;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"JacketsdfgdfDetail"];

    self.title = nil;
    
    self.customTableViewDelegate = self;

    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    if([self.tableView respondsToSelector:@selector(setCellLayoutMarginsFollowReadableWidth:)]) {
        self.tableView.cellLayoutMarginsFollowReadableWidth = NO;
    }

    [self updateViewConstraints];

    [self loadData];
}

#pragma mark - ROCustomTableViewDelegate

- (void)configureWithDataItem:(ProductsDSItem *)item {
    self.title = item.name;
    self.items = @[
                   [ROTextCellDescriptor text:[NSString stringWithFormat:@"%@%@%@%@", @"$", item.price, @" aaaa", item.rating] action:nil textStyle:[ROTextStyle style:ROFontSizeStyleLarge bold:NO italic:NO textAligment:NSTextAlignmentLeft textColor:@"#fbbc05"]],
                   [ROTextCellDescriptor text:@"aaa" action:nil textStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]],
                   [ROImageCellDescriptor imageString:[self.dataLoader.datasource imagePath:item.picture] action:nil]
                  ];
}

@end
