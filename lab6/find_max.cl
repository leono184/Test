/*
 * Placeholder OpenCL kernel
 */

__kernel void find_max(__global unsigned int *data, const unsigned int length)
{ 
    int threadId=get_global_id(0);
    int localThreadId=get_local_id(0);


    for(int i=length/2;i>=1;i/=2)
       if(localThreadId<i)       
            if(data[localThreadId]<data[localThreadId+i])
                data[localThreadId]=data[localThreadId+i];
}
