#include<stdio.h>
#include<stdlib.h>
#include<zcutil/zcutil.h>
int main(int argc, char *argv[]){
	zc_buf_t file_buf =  zc_file2buf(argv[1]);

	zc_queue_t buf[8] = {0};
	for(int i = 0 ; i < ARRAY_SIZE(buf); i++ ){
		zc_queue_increase_capacity(&buf[i],10240);
	}
	

	for(int i = 0; i< file_buf.size; i=i+2){
		zc_queue_en(&buf[i/2%8],&file_buf.base[i],2);
		/* log_v("%d\n",i/2%8); */
	}
	
	for(int i = 0 ; i < ARRAY_SIZE(buf); i++ ){
		char file_name[256]= {0};
		sprintf(file_name,"t_%d.pcm",i+1);
		zc_buf2file(file_name,zc_queue_get_base(&buf[i]),zc_queue_get_offset(&buf[i]));
	}

	zc_buf2file_close_all();

	return 0;
}
