//
//  Setupsimulation.m
//  Core3D-Editor
//
//  Created by CoreCode on 10.06.09.
//  Copyright 2007 - 2012 CoreCode. Licensed under the MIT License, see _MIT_LICENSE.txt
//

#import "Setupsimulation.h"

#define RND(x,y) (cml::random_real(x,y))
@implementation Setupsimulation

- (id)init
{
	if ((self = [super init]))
	{
		RenderPass *renderPass = [RenderPass mainRenderPass]; // convenience creates pass to full screen with one default light and adds it to the scene
		Light *light = [[renderPass lights] objectAtIndex:0];
        
        // setup camera
		[[renderPass camera] setAxisConfiguration:kXYZRotation];
		[[renderPass camera] setPosition:vector3f(0, 4, 0)];

        // setup scene
        ShaderNode *phongNode = [[ShaderNode alloc] initWithShader:[scene phongTextureShader]]; // reuse base shader the scene provides
        for (int x = -10; x < 10; x++)
        {
            for (int z = -10; z < 10; z++)
            {
                Mesh *sphere = [[[Mesh alloc] initWithOctreeNamed:RND(0.0f, 1.0f) > 0.5f ? @"item_sphere_damage" : @"item_sphere_shield"] autorelease];
				
                [[phongNode children] addObject:sphere];

                [self addAnimationWithDuration:999.0f
                                     animation:^(double delay)
                                        {
											[sphere setRotation:[sphere rotation]+vector3f(RND(1.f, 2.f), RND(2.f, 3.f), RND(0.5f, 0.7f))];
                                            [sphere setPosition:vector3f(x*3, sinf(delay * 4 + x + z * 3), z * 3)];
                                        }
                                    completion:^{}];
                

            }
        }
        [[renderPass objects] addObject:phongNode];

	
        // animate camera & light
        [self addAnimationWithDuration:999.0f
                             animation:^(double delay)
									{ 
                                        [[renderPass camera] setRotation:vector3f(-25, delay * 20.0, 0)];
                                        [light setPosition:vector3f(sinf(delay * 4) * 100, 100, cosf(delay * 4) * 100)];
                                    }
                            completion:^{}];
	}
	return self;
}
@end

int main(int argc, char *argv[])
{
	return NSApplicationMain(argc, (const char **) argv);
}
