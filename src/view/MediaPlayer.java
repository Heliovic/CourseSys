package view;

import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import javax.media.CannotRealizeException;
import javax.media.ControllerEvent;
import javax.media.ControllerListener;
import javax.media.EndOfMediaEvent;
import javax.media.Manager;
import javax.media.MediaLocator;
import javax.media.NoPlayerException;
import javax.media.Player;
import javax.media.PrefetchCompleteEvent;
import javax.media.RealizeCompleteEvent;
import javax.media.Time;

@SuppressWarnings({ "restriction", "unused" })
public class MediaPlayer implements ControllerListener {   //ControllerListener状态控制接口
    /**  Component代表Swing对应用程序提供了如下几类编程接口：

     * 用户界面的组件树的创建和修改的方法。这包括组件的添加和删除等操作。

     * 组件属性访问的方法，比如组件位置、组件前后背景色、组件字体等等。

     * 组件状态及生命周期的管理的方法，比如隐藏和显示、创建和销毁等等。

     * 组件位置、大小的管理，包括通过布局管理器的方法。

     * 组件事件处理接口的管理，包括添加、删除等操作。*/
    private Frame frameVedio;   //建立一个顶层容器
    private Player player;      //
    private Panel panel;        //建立一个面板
    private Component visual;        //视频接口
    private Component control = null;   //定义一个控制接口，用于接受视频的时间轴控制器和音量控制等等
    private int insetWidth = 600;   //设置播放器视频画面中间面板的大小，它会强制将视频的原大小修改为你定义的大小
    private int insetHeight =400;

    public void play(){
        frameVedio = new Frame("我的视频播放器");
        frameVedio.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                if(player != null) {
                    player.close();
                }
                System.exit(0);
            }
        });
        frameVedio.setBounds(400, 100, 800, 600);   //定义播放器容器的位置和大小
        frameVedio.setVisible(true);
        URL url = null;    //要播放的视频文件的URL
        try {
            url = new URL("file:///D:/10B6158C13FD0DA53D18659EAEF4E967.avi");
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        try {
            player = Manager.createPlayer(url); //通过调用Manager的createPlayer方法来创建一个Player的对象
            //这个对象是媒体播放的核心控制对象
        } catch (NoPlayerException e1) {
            e1.printStackTrace();
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        player.addControllerListener(this); //对player对象注册监听器，能够在相关事件发生的时候执行响应的动作
        //如果不进行监听，那么它就无法获取你是否有视频的输入
        player.realize();  //对播放前进行预处理状态，就是缓冲资源  ,让player对象进行相关的资源分配
    }

    public void controllerUpdate(ControllerEvent ce) { //监听player的相关事件
        if (ce instanceof RealizeCompleteEvent) {
            player.prefetch(); //player实例化完成后进行player播放前预处理
        } else if (ce instanceof PrefetchCompleteEvent) {   //PrefetchCompleteEvent对视频进行判断是否已经预处理完毕
            if (visual != null)    //视频接口可以获取视频
                return;
            if ((visual = player.getVisualComponent()) != null) {  //取得player中的播放视频的组件
                Dimension size = visual.getPreferredSize();  //获取视频组件的大小尺寸
                /*getPreferedSize方法是获取组的首选大小，因为布局管理器会根据组件自动调整框架窗口的大小，
                 * 可以通过这个方法来获取自动调整后的组件大小，没有自动调用只是能获取大小而已*/
                frameVedio.add(visual); //将视频接口添加至顶层容器中
            }
            if ((control = player.getControlPanelComponent()) != null) {  //取得player中的视频播放控制条组件
                //并把该组件添加到控制接口中
                frameVedio.add(control, BorderLayout.SOUTH);   //将控制接口添加到Frame窗口中
            }
            frameVedio.setSize( insetWidth,  insetHeight);  //设定Frame窗口的大小，让他满足我们设置的视频大小

            frameVedio.validate(); //frame.validate()是验证frame中的所有组件,并不会调整frame的大小.
            //Frame.pack()这个方法的作用就是根据窗口里面的布局及组件的preferedSize来确定frame的最佳大小。
            //启动视频播放组件开始播放
            player.start();
            //mediaPlayer.start();
        } else if (ce instanceof EndOfMediaEvent) {  /*instanceof是Java、php的一个二元操作符（运算符），和==，>，<是同一类东西。由于它是由字母组成的，所以也是Java的保留关键字。                                                                                              它的作用是判断其左边对象是否为其右边类的实例，返回boolean类型的数据。*/
            player.setMediaTime(new Time(0));  //当播放视频完成后，把时间进度条恢复到开始，
            player.start(); //再次重新开始播放
        }
    }

    public static void main(String[] args) {
        MediaPlayer sp = new MediaPlayer();
        sp.play();
    }
}
