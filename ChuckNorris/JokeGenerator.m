//
//  JokeGenerator.m
//  ChuckNorris
//
//  Created by Richard Martin on 2016-01-04.
//  Copyright © 2016 richard martin. All rights reserved.
//

#import "JokeGenerator.h"

@implementation JokeGenerator

-(id)init {
    if ((self = [super init])) {
        self.jokes = @{
                       @"Chuck"   : @[@"They once named a street after Chuck Norris, but they had to close it down because no one dared cross Chuck Norris.",
                                      @"The truth hurts because Chuck Norris roundhouse kicked it.",
                                      @"Chuck Norris doesn't cheat death, he beats it fair and square.",
                                      @"Ghosts sit around the campfire and tell Chuck Norris stories.",
                                      @"Chuck Norris only uses stunt doubles for crying scenes.",
                                      @"That's not an eclipse - it's the sun hiding from Chuck Norris."],
                       @"Knock"   : @[@"Knock, knock! Who's there? Says! Says who? Says me, that's who?",
                                      @"Knock, knock! Who's there? Cows go. Cows go who? No, cows go moo!",
                                      @"Knock, knock! Who's there? Spell. Spell who? Ok. W H O."],
                       @"YoMamma" : @[@"Yo momma so dumb she studied for a drug test!",
                                      @"Yo momma so fat she jumped in the air and got stuck!",
                                      @"Yo momma so poor when she goes in her front door, she's in her back yard!"]
                       };
    }
    return self;
    }

-(NSString *)randomJoke {
    int randomIdx = arc4random() % self.jokes.count;
    
    NSString *jokeResult = nil;
    
    for (NSString *key in self.jokes) {
        jokeResult = [self.jokes[key] objectAtIndex:randomIdx];
    }
    
    return jokeResult;

}

@end
