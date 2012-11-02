include $(GNUSTEP_MAKEFILES)/common.make

PACKAGE_NAME = Core3DExample
APP_NAME = Core3DExample

Core3DExample_LANGUAGES = English


OPTFLAG = -O3
CFLAGS = -include ../Core3D/Utilities/Core3D_Prefix.pch
CCFLAGS = -include ../Core3D/Utilities/Core3D_Prefix.pch
OBJCFLAGS = -include ../Core3D/Utilities/Core3D_Prefix.pch -fobjc-nonfragile-abi -fblocks
ADDITIONAL_INCLUDE_DIRS = -I../Core3D/_DEPENDENCIES/headers/ -I../Core3D/_DEPENDENCIES/headers/SDL -I../Core3D/_DEPENDENCIES/headers/SDL_mixer -I../Core3D/_DEPENDENCIES/headers/freetype/include -I../Core3D/_DEPENDENCIES/sources/ -I../Core3D/_DEPENDENCIES/sources/bullet/src/ -I../Core3D/_DEPENDENCIES/sources/bullet/src/LinearMath/ -I../Core3D/_DEPENDENCIES/sources/bullet/src/BulletCollision/BroadphaseCollision/ -I../Core3D/_DEPENDENCIES/sources/bullet/src/BulletCollision/CollisionDispatch/ -I../Core3D/_DEPENDENCIES/sources/bullet/src/BulletCollision/CollisionShapes/ -I../Core3D/_DEPENDENCIES/sources/bullet/src/BulletCollision/NarrowPhaseCollision/ -I../Core3D/_DEPENDENCIES/sources/bullet/src/BulletCollision/Gimpact/ -I../Core3D/_DEPENDENCIES/sources/sha1-c/ -I../Core3D/_DEPENDENCIES/sources/dds -I../Core3D/_DEPENDENCIES/sources/freetype-gl/ -I../Core3D/_DEPENDENCIES/sources/snappy -I../Core3D/CoreEngine/ -I../Core3D/PlatformSupport/ -I../Core3D/Utilities/ -I../Core3D/SpecialNodes/ -I../Core3D/SpecialNodes/Particlesystems/ -I../Core3D/Editor/ -I../Core3D/Audio/
ADDITIONAL_LIB_DIRS = -L../Core3D/_DEPENDENCIES/libs-linux64/ -L../Core3D/_DEPENDENCIES/libs-linux32/
ADDITIONAL_OBJC_LIBS = -lGL -lSDL -lSDL_mixer -lfreetype -lBulletCollision -lLinearMath
#ADDITIONAL_LDFLAGS = -Wl,--rpath='$$ORIGIN/'

ADDITIONAL_CPPFLAGS = -DNDEBUG=1 -DRELEASEBUILD=1 -DDISABLE_SOUND=1 -Qunused-arguments
ADDITIONAL_OBJCFLAGS = -DNDEBUG=1 -DRELEASEBUILD=1 -DDISABLE_SOUND=1 -Qunused-arguments


Core3DExample_HEADERS = ../Core3D/CoreEngine/Camera.h ../Core3D/CoreEngine/FBO.h ../Core3D/CoreEngine/Light.h ../Core3D/CoreEngine/Mesh.h ../Core3D/CoreEngine/RenderPass.h ../Core3D/CoreEngine/RenderTarget.h ../Core3D/CoreEngine/Scene.h ../Core3D/CoreEngine/SceneNode.h ../Core3D/CoreEngine/Shader.h ../Core3D/CoreEngine/Simulation.h ../Core3D/CoreEngine/Texture.h ../Core3D/PlatformSupport/SDLRenderViewController.h ../Core3D/Utilities/../Core3D.h ../Core3D/Utilities/opengl_linux.h ../Core3D/Utilities/StateUtilities.h ../Core3D/Utilities/Utilities.h Setupsiumulation.h
Core3DExample_OBJCC_FILES = Setupsimulation.mm ../Core3D/CoreEngine/Camera.mm ../Core3D/CoreEngine/VBO.mm ../Core3D/CoreEngine/FBO.mm ../Core3D/CoreEngine/Light.mm ../Core3D/CoreEngine/Mesh.mm ../Core3D/CoreEngine/RenderPass.mm ../Core3D/CoreEngine/RenderTarget.mm ../Core3D/CoreEngine/ShaderNode.mm ../Core3D/CoreEngine/Scene.mm ../Core3D/CoreEngine/SceneNode.mm ../Core3D/CoreEngine/Shader.mm ../Core3D/CoreEngine/Simulation.mm ../Core3D/CoreEngine/Texture.mm ../Core3D/Editor/Editor.mm ../Core3D/Editor/Editorsimulation.mm ../Core3D/PlatformSupport/PortableRenderViewController.mm ../Core3D/SpecialNodes/BatchingTextureNode.mm ../Core3D/SpecialNodes/ShadowShader.mm ../Core3D/SpecialNodes/FocusingCamera.mm ../Core3D/SpecialNodes/DynamicNode.mm ../Core3D/SpecialNodes/CollideableMeshBullet.mm ../Core3D/SpecialNodes/CollideableSceneNode.mm ../Core3D/SpecialNodes/OutlineShader.mm ../Core3D/SpecialNodes/Skybox.mm ../Core3D/SpecialNodes/SpriteNode.mm ../Core3D/SpecialNodes/Particlesystems/Particlesystem.mm ../Core3D/SpecialNodes/Particlesystems/FireParticlesystem.mm ../Core3D/SpecialNodes/Particlesystems/SphereParticlesystem.mm ../Core3D/Utilities/StateUtilities.mm ../Core3D/Utilities/Utilities.mm 
Core3DExample_CC_FILES = ../Core3D/Utilities/opengl_linux.cpp ../Core3D/_DEPENDENCIES/sources/dds/MyDDS.cpp ../Core3D/_DEPENDENCIES/sources/snappy/snappy-c.cc ../Core3D/_DEPENDENCIES/sources/snappy/snappy-sinksource.cc ../Core3D/_DEPENDENCIES/sources/snappy/snappy-stubs-internal.cc ../Core3D/_DEPENDENCIES/sources/snappy/snappy.cc
Core3DExample_C_FILES = ../Core3D/_DEPENDENCIES/sources/sha1-c/sha1.c ../Core3D/_DEPENDENCIES/sources/freetype-gl/font-manager.c  ../Core3D/_DEPENDENCIES/sources/freetype-gl/markup.c  ../Core3D/_DEPENDENCIES/sources/freetype-gl/texture-atlas.c  ../Core3D/_DEPENDENCIES/sources/freetype-gl/texture-font.c  ../Core3D/_DEPENDENCIES/sources/freetype-gl/vector.c  ../Core3D/_DEPENDENCIES/sources/freetype-gl/vertex-buffer.c
Core3DExample_RESOURCE_FILES = item_sphere_damage.dds item_sphere_damage.octree.snz item_sphere_shield.dds item_sphere_shield.octree.snz MainMenu.xib ../Core3D/Shaders/color.frag ../Core3D/Shaders/color.vert ../Core3D/Shaders/depthonly.frag ../Core3D/Shaders/depthonly.vert ../Core3D/Shaders/phong.frag ../Core3D/Shaders/phong.vert ../Core3D/Shaders/pointsprite.frag ../Core3D/Shaders/pointsprite.vert ../Core3D/Shaders/texture.frag ../Core3D/Shaders/texture.vert

Core3DExample_MAIN_MODEL_FILE = MainMenu.xib


include $(GNUSTEP_MAKEFILES)/application.make
