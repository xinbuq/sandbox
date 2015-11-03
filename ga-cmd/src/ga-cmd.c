#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "keyhide.h"
#include "cfgfile.h"
#include "verf.h"
#include "codegen.h"

/*-----------------------------------------------------------------*/
int main(int argc, char **argv)
{
    char key_from_compile[] = { SEED };
    char key_from_file[17];
    char *key;
    int verf_code;

    reveal_key(key_from_compile);

    key = (load_key(get_config_filename(".ga-cmd"), key_from_file,
                sizeof(key_from_file)) == 0) ? key_from_file : key_from_compile;

    if (argc > 1) {
        key = argv[1];
    }
    verf_code = gen_verf_code(key, time(0) / 30);

    // printf("%s\n", key);
    printf("%6.6d\n", verf_code);

    return EXIT_SUCCESS;
}

