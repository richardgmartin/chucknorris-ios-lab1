//
//  JokeGenerator.h
//  ChuckNorris
//
//  Created by Richard Martin on 2016-01-04.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JokeGenerator : NSObject

@property (strong) NSDictionary *jokes;

-(NSString *)randomJoke;

@end
