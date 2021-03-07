#include <iostream>

/*
    Эта программа - простое информационное меню по изменённому плагину
    Она не несёт особого смысла
*/

/*
    Компиляция:
    Открыть проект в Visual Studio 2019, нажать в верхнем меню Build(Сборка), выбрать: Build Solution(Собрать решение)
*/

int main()
{
    printf("World Guard Changed by k0t0ff\n");
    printf("Information:\n");
    printf("Region Removing Interval: 1 month\n");
    printf("If player wasn't in game for 1 month - region will be deleted\n");
    printf("Plugin automatically saves volume of old privating area....\n");
    printf("If you entered: /rg reprivate Name, Name - old name of removed region\n");
    printf("Moderators, Operators, Admins can create undeletable regions\n");
    printf("Advanced commands:\n");
    printf("/rg reprivate Name - re-private removed region with his old name\n");
    printf("/rg undreg Name (only for Moders, Ops, Adms) - create undeletable region\n");
    printf("/rg fdreg Name (only for Admins) - delete failed-to-del region\n");
    printf("/rg chtm (only for Ops, Admins) - changes timing for deleting region");
    return 0;
}