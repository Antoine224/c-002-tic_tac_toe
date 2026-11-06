#include "raylib.h"

int main(void)
{
    InitWindow(800, 600, "Mon jeu");

    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(BLACK);
        DrawText("Hello Raylib!", 300, 280, 30, WHITE);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}
