//
//  DetailViewModel.h
//  VivaDecora
//
//  Created by Ezequiel on 26/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailsAvfm.h"

@interface DetailViewModel : NSObject

@property (strong, nonatomic) DetailsAvfm *model;
-(instancetype)initWithModel:(DetailsAvfm*)model;

@property (nonatomic, strong) NSString * address;
@property (nonatomic, strong) NSString * average_rating;
@property (nonatomic, strong) NSString * background;
@property (nonatomic, strong) NSString * city;
@property (nonatomic, strong) NSString * city_id;
@property (nonatomic, strong) NSString * country;
@property (nonatomic, strong) NSString * defunct;
@property (nonatomic, strong) NSString * favorite_count;
@property (nonatomic, strong) NSString * gps;
@property (nonatomic, strong) NSString * id_field;
@property (nonatomic, strong) NSString * lat;
@property (nonatomic, strong) NSString * long_field;
@property (nonatomic, strong) NSString * link;
@property (nonatomic, strong) NSString * metro;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * newest_image;
@property (nonatomic, strong) NSString * phone;
@property (nonatomic, strong) NSString * pl_city;
@property (nonatomic, strong) NSString * pl_state;
@property (nonatomic, strong) NSString * primary_tickets;
@property (nonatomic, strong) NSString * rating_count;
@property (nonatomic, strong) NSString * sameas;
@property (nonatomic, strong) NSString * seatsmart_id;
@property (nonatomic, strong) NSString * size;
@property (nonatomic, strong) NSString * state;
@property (nonatomic, strong) NSAttributedString * stats;
@property (nonatomic, strong) NSString * stubhub_id;
@property (nonatomic, strong) NSString * team;
@property (nonatomic, strong) NSString * tiqiq_id;
@property (nonatomic, strong) NSString * type;
@property (nonatomic, strong) NSString * venue_id;
@property (nonatomic, strong) NSString * venue_images;
@property (nonatomic, strong) NSString * zip;


@end
