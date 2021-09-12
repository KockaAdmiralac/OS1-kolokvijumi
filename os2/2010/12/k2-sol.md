2010/decembar/SI Kolokvijum 2 - Decembar 2010 - Resenja.doc
--------------------------------------------------------------------------------


1/  2 
Rešenja drugog kolokvijuma iz  
Operativnih sistema 2 
Decembar 2010. 
1. (10 poena) 
0 0 1 1 1 
1 0 1 1 0 
2 1 0 1 1 
3 1 0 0 1 
Bila bi izbačena stranica 1. 
2. (10 poena) 
a)(5) 130, 157, 189, 200, 17, 23, 25, 64, 68, 76  
b)(5)    RAID   2 je otporan na otkaz   više   od jednog diska, jer dodatni   ECC biti  na 
redundantnim diskovima mogu da restauriraju otkaz  više  od  jednog  bita u  pruzi.  RAID  3  je 
otporan samo na otkaz jednog diska, jer je samo bit parnosti redundantan. RAID 3 ima veći 
efektivan kapacitet za isti broj fizičkih diskova N (kapacitet je (N-1)/N) nego RAID 2 (N-k/N, 
k je broj ECC diskova i veći je od 1). 
3. (10 poena) 
void* buddy_alloc (int i) { 
  if (i<0 || i>=N) return 0; // Error 
  // First, try to find the segment of exact size of 2^i blocks: 
  if (buddy[i]>-1) {   
    // Found! Remove it from the list buddy[i] and return it: 
    int* ret = (int*)block(buddy[i]); 
    buddy[i] = *ret;  
    return ret; 
  }   
  // Else, find the first next bigger segment: 
  for (int j=i+1; j<N; j++) { 
    int seg1 = buddy[j]; 
    if (seg1>-1) { 
      // Found. Divide it into two halves: 
      int seg2 = seg1 + (1<<(j-1))  ; 
      int* pSeg1 = (int*)block(seg1);  
      int* pSeg2 = (int*)block(seg2); 
      // Remove it from buddy[j]: 
      buddy[j] = *pSeg1; 
      // Add two segments to buddy[j-1]: 
      *pSeg2 = buddy[j-1]; 
      *pSeg1 = seg2; 
      buddy[j-1] = seg1; 
      // Now, try again from the beginning (recursion). 
      // You will find it eventually! 
      return buddy_alloc(i); 
    } 
  }   
  // Not found, no memory: 
  return 0;  
} 

2/  2 
4. (10 poena) 
int dir_chdir (char* dirname) { 
  if (dirname==0) return -1; // Error in argument 
  FHANDLE fhandle = dir_curdir(); 
  if (*dirname==’/  ’)  fhandle = 0, dirname++; 
  while (*dirname) { 
    void* dir = file_map(fhandle); 
    if (dir==0) return -1; // Error in memory mapping the file 
    fhandle = dir_find(dir,dirname); 
    file_unmap(dir); 
    if (fhandle==-1) return -1; // Directory not found 
    if (!dir_isdir(fhandle)) return -1; // Not a directory 
    while (*dirname!=’/’ && *dirname!=’\0’) dirname++; 
    if (*dirname==’/’) dirname++; 
  }  ; 
  dir_chdir(fhandle); 
  return 0; 
} 