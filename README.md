# 1023
用途是從codeforces 的排名抓取一給定分數以上的人，加上國家，並畫在世界地圖上，就可以知道哪個國家的人分數高的人多。
用colab

第三個就是pygal 裡面有個dictionary
他會是國家簡寫對應國家名字
那個是用來找出國家簡寫用的
第五個就是在網頁裡找到每行的資料
找國旗的部分，裡面有寫國家名稱
所以可以去找簡寫，然後在那個國家紀錄人數的地方加1
第6就是按頁數一頁一頁去找
順便數一下總共有多少人，因為只記有國家的人
7就是畫出來那張圖上面的東西
8算是主函數，有最低分的限制
9就是因為colab是在虛擬主機那邊做，所以資料也在那邊，要把它載下來
