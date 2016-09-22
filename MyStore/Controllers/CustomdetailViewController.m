//
//  CustomdetailViewController.h
//  MyStore
//
//  This App has been generated using IBM Mobile App Builder
//

#import "CustomdetailViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "ROImageCellDescriptor.h"
#import "ROTextCellDescriptor.h"
#import "ROHeaderCellDescriptor.h"
#import "ROOptionsFilter.h"
#import "ROSingleDataLoader.h"
#import "Item.h"
#import "EmptyDatasource.h"

@interface CustomdetailViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@end

@implementation CustomdetailViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:[EmptyDatasource new]
                                                           optionsFilter:self.optionsFilter];

    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Customdetail"];

    self.title = NSLocalizedString(@"Custom detail", nil);

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

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {

        _optionsFilter = [ROOptionsFilter new];
        
    }
    return _optionsFilter;
}

#pragma mark - ROCustomTableViewDelegate

- (void)configureWithDataItem:(Item *)item {
    self.items = @[
                   
                  ];
}

@end
