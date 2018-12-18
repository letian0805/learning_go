class MultiThreads implements Runnable {
   private Thread t;
   private int threadNum;
   
   MultiThreads( int num) {
      threadNum = num;
   }
   
   public void run() {
      System.out.printf("Thread-%d run\n", threadNum);
      try{
          // 让线程睡眠一会
          Thread.sleep(100000);
      }catch(Exception e){}
      System.out.printf("Thread-%d exit\n", threadNum);
   }
   
   public void start () {
      if (t == null) {
         t = new Thread (this, "");
         t.start ();
      }
   }
}
 
public class multi_threads {
 
   public static void main(String args[]) {
      int i = 0;
      for(i = 0; i < 1000; i++){
          MultiThreads R1 = new MultiThreads(i);
          R1.start();
      }
   }   
}
