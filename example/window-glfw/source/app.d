import deps.glfw;
import deps.gl3;
import core.stdc.stdio          : printf;
import ui.window                : createMainWindow;
import ui.window                : MainWindow;


MainWindow window;


void main() 
{
	window = createMainWindow( 800, 600, "OpenGL" );
	mainLoop();
}


nothrow @nogc
void draw()
{
    glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );

	int width, height;
	glfwGetFramebufferSize( window, &width, &height );
	glViewport( 0, 0, width, height );
}


/** */
nothrow @nogc
void mainLoop()
{
	while ( !glfwWindowShouldClose( window ) ) 
	{
		draw();
		glfwSwapBuffers( window );
		glfwPollEvents();
	}
}

