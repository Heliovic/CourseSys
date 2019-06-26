package view;

import DAO.MySQLDAO;
import model.Course;
import model.CourseComment;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import java.util.Vector;

public class CourseWindow {
    private JPanel CourseWindowPanel;
    private JTextArea IntroductionTextArea;
    private JTable CommentsTabel;
    private JLabel TitleLabel;

    private int currentRow = 1;

    public CourseWindow(Course course) {
        TitleLabel.setText(course.getCourseName());
        IntroductionTextArea.setText(course.getContent());

        List<CourseComment> courseCommentsList = MySQLDAO.getInstance().getCourseComment(course.getCourseId());

        Vector rowDataSet = new Vector();
        Vector names = new Vector();
        names.add("评论内容");
        names.add("分数");
        for (CourseComment courseComment : courseCommentsList) {
            Vector rowData = new Vector();
            rowData.add(courseComment.getContent());
            rowData.add(courseComment.getScore());
            rowDataSet.add(rowData);
        }
        DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        CommentsTabel.setModel(model);
        CommentsTabel.getColumnModel().getColumn(0).setPreferredWidth(200);
        CommentsTabel.setRowHeight(28);
        CommentsTabel.getTableHeader().setPreferredSize(new Dimension(CommentsTabel.getTableHeader().getWidth(), 28));

        CommentsTabel.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                currentRow = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
                if (e.getClickCount() == 2) {
                    new CommentWindow(courseCommentsList.get(currentRow));
                }
            }
        });
        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(CourseWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
