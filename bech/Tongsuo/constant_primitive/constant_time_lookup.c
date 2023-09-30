#include "../../ct-verif.h"
#include "../Tongsuo/include/internal/constant_time.h"
void constant_time_lookup_wrapper(void *out,
                                             const void *table,
                                             size_t rowsize,
                                             size_t numrows,
                                             size_t idx){
	public_in(__SMACK_value(table));
	public_in(__SMACK_value(out));
	public_in(__SMACK_value(rowsize));
    public_in(__SMACK_value(numrows));
    // public_in(__SMACK_value(idx));

    public_in(__SMACK_values(out, 32));
    public_in(__SMACK_values(table, 256));



	constant_time_lookup(out, table, rowsize, numrows,idx);
}

void *getout();
 const void *gettable();
 size_t getrowsize();
 size_t getnumrows();
 size_t getidx();


void constant_time_lookup_wrapper_t(){
void *out = getout();
const void *table= gettable();
 size_t rowsize = getrowsize();
 size_t numrows =getnumrows();
 size_t idx = getidx();
	constant_time_lookup(out, table, rowsize, numrows,idx);
}