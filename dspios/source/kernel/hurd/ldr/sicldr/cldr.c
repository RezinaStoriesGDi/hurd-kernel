void initGraphics() {
     int i = 0, j = 0;
     int m = 0;
     int cnt1 = 0, cnt2 =0;
     unsigned char color = 10;

     for(;;) {
          if(m < (MAX_ROWS - m)) {
               ++cnt1;
          }
          if(m < (MAX_COLS - m - 3)) {
               ++cnt2;
          }

          if(cnt1 != cnt2) {
               cnt1  = 0;
               cnt2  = 0;
               m     = 0;
               if(++color > 255) color= 0;
          }


          j = 0;
          for(i = m; i < MAX_ROWS - m; ++i) {
               drawPixel(color, j+m, i);
          }

          for(j = m; j < MAX_COLS - m; ++j) {
               drawPixel(color, j, i);
          }


          for(i = MAX_ROWS - m - 1 ; i >= m; --i) {
               drawPixel(color, MAX_COLS - m - 1, i);
          }

          for(j = MAX_COLS - m - 1; j >= m; --j) {
               drawPixel(color, j, m);
          }
          m += 6;
          if(++color > 255)  color = 0;
     }
}

void main() {
     printString("Now in bootloader hit a key to continue\n\r");
     getch();
     initEnvironment();
     initGraphics();
}