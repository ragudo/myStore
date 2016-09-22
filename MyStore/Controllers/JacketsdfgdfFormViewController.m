//
//  JacketsdfgdfFormViewController.h
//  MyStore
//
//  This App has been generated using IBM Mobile App Builder
//

#import "JacketsdfgdfFormViewController.h"
#import "DatasourceManager.h"
#import "ROUtils.h"
#import "RORefreshBehavior.h"
#import "ProductsDS.h"
#import "ROError.h"
#import "SVProgressHUD.h"
#import "ROFormFieldText.h"
#import "ROFormFieldImage.h"
#import "ProductsDSItem.h"

@interface JacketsdfgdfFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldText *nameField;

@property (nonatomic, strong) ROFormFieldText *categoryField;

@property (nonatomic, strong) ROFormFieldText *descriptionPropField;

@property (nonatomic, strong) ROFormFieldText *priceField;

@property (nonatomic, strong) ROFormFieldText *ratingField;

@property (nonatomic, strong) ROFormFieldImage *pictureField;

@property (nonatomic, strong) ROFormFieldImage *thumbnailField;

@end

@implementation JacketsdfgdfFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"JacketsdfgdfForm"];

    self.nameField = [ROFormFieldText fieldWithLabel:@"Name" name:kProductsDSItemName required:NO];
    
    self.categoryField = [ROFormFieldText fieldWithLabel:@"Category" name:kProductsDSItemCategory required:NO];
    
    self.descriptionPropField = [ROFormFieldText fieldWithLabel:@"Description" name:kProductsDSItemDescription required:NO];
    
    self.priceField = [ROFormFieldText fieldWithLabel:@"Price" name:kProductsDSItemPrice required:NO];
    
    self.ratingField = [ROFormFieldText fieldWithLabel:@"Rating" name:kProductsDSItemRating required:NO];
    
    self.pictureField = [ROFormFieldImage fieldWithLabel:@"Picture" name:kProductsDSItemPicture viewController:self required:NO];
    
    self.thumbnailField = [ROFormFieldImage fieldWithLabel:@"Thumbnail" name:kProductsDSItemThumbnail viewController:self required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.nameField,
                   self.categoryField,
                   self.descriptionPropField,
                   self.priceField,
                   self.ratingField,
                   self.pictureField,
                   self.thumbnailField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(ProductsDSItem *)item {

    self.identifier = [item identifier];

    [self.nameField setValue:item.name];
    
    [self.categoryField setValue:item.category];
    
    [self.descriptionPropField setValue:item.descriptionProp];
    
    [self.priceField setValue:item.price];
    
    [self.ratingField setValue:item.rating];
    
    [self.pictureField setValue:item.picture];
    
    [self.thumbnailField setValue:item.thumbnail];
}

#pragma mark - Form actions

- (void)cancelButtonAction:(id)sender {

    [super cancelButtonAction:sender];
}

- (void)deleteButtonAction:(id)sender {

    [super deleteButtonAction:sender];
}

- (void)saveButtonAction:(id)sender {

    [super saveButtonAction:sender];
}

- (void)confirmDelete {

    [super confirmDelete];
}

- (void)deleteItem {

    [super deleteItem];
}

- (void)updateItem {

    [self.hiddenValues removeAllObjects];

    [super updateItem];
}

- (void)createItem {
    
    [super createItem];
}

@end
