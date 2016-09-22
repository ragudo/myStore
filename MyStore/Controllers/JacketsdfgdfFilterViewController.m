//
//  JacketsdfgdfFilterViewController.h
//  MyStore
//
//  This App has been generated using IBM Mobile App Builder
//

#import "JacketsdfgdfFilterViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "ROFilterFieldSelection.h"
#import "ProductsDSItemKeys.h"
#import "ProductsDSItem.h"
#import "ProductsDS.h"

@implementation JacketsdfgdfFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Jacketsdfgdf"];

    self.title = NSLocalizedString(@"Jackets", nil);

    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Price"
                                              fieldName:kProductsDSItemPrice
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Rating"
                                              fieldName:kProductsDSItemRating
                                         formController:self
                                                 single:NO],
                     
    ];
}

#pragma mark - Filter actions

- (void)close {
  
    [super close];
}

- (void)cancel {
  
    [super cancel];
}

- (void)submit {

    [super submit];
}

- (void)reset {
  
    [super reset];
}

@end
