package ui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.Vector;

import javafx.scene.image.Image;

import javax.security.auth.login.FailedLoginException;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.border.TitledBorder;
import javax.swing.event.AncestorEvent;
import javax.swing.event.AncestorListener;
import javax.swing.table.DefaultTableModel;

import service.LoaiSanPhamService;
import service.LoaiTaiKhoanService;
import service.NhaSanXuatService;
import service.NhanVienService;
import service.SanPhamService;
import service.TaiKhoanService;
import model.HienThiToanBoNhanVienModel;
import model.LoaiSanPhamModel;
import model.LoaiTaiKhoanModel;
import model.NhaSanXuatModel;
import model.NhanVienModel;
import model.SanPhamModel;
import model.TaiKhoanModel;

public class ThemTaiKhoanUI extends JFrame{
	JTextField txtTimKiemTaiKhoan, txtTenDangNhap;
	JPasswordField txtMatKhau;
	JButton btnTimKiemTaiKhoan, btnThemTaiKhoan, btnSuaTaiKhoan, btnXoaTaiKhoan;
	JComboBox<LoaiTaiKhoanModel>cboLoaiTK;
	DefaultTableModel dtmTaiKhoan;
	JTable tblTaiKhoan;
	Vector<TaiKhoanModel>dsTaiKhoan;
	JCheckBox chkHienThiToanBoTaiKhoan;
	public ThemTaiKhoanUI(String title){
		super(title);
		addControls();
		addEvents();
		hienThiLoaiTaiKhoanTrenCombobox();
		hienThiToanBoTaiKhoan();
	}
	private void hienThiToanBoTaiKhoan() {
		TaiKhoanService tkService = new TaiKhoanService();
		dsTaiKhoan = tkService.docToanBoTaiKhoan();
		dtmTaiKhoan.setRowCount(0);
		for(TaiKhoanModel tk : dsTaiKhoan)
		{
			Vector<Object>vec=new Vector<Object>();
			vec.add(tk.getTenDangNhap());
			vec.add(tk.getMatKhau());
			dtmTaiKhoan.addRow(vec);
		}
	}
	private void hienThiLoaiTaiKhoanTrenCombobox() {
		LoaiTaiKhoanService ltkService = new LoaiTaiKhoanService();
		Vector<LoaiTaiKhoanModel>vec=ltkService.docToanBoLoaiTaiKhoan();
		cboLoaiTK.removeAllItems();
		for(LoaiTaiKhoanModel ltk : vec)
		{
			cboLoaiTK.addItem(ltk);
		}
	}
	public void addControls(){
		Container con = getContentPane();
		con.setLayout(new BorderLayout());
		JPanel pnTop = new JPanel();
		pnTop.setLayout(new BoxLayout(pnTop, BoxLayout.Y_AXIS));
		con.add(pnTop, BorderLayout.NORTH);
		
		JPanel pnTimKiemTaiKhoan = new JPanel();
		pnTimKiemTaiKhoan.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel lblTimKiemTaiKhoan = new JLabel("Nh???p d??? li???u t??m ki???m: ");
		txtTimKiemTaiKhoan = new JTextField(20);
		btnTimKiemTaiKhoan = new JButton("T??m ki???m");
		btnTimKiemTaiKhoan.setIcon(new ImageIcon("images/search10.png"));
		pnTimKiemTaiKhoan.add(lblTimKiemTaiKhoan);
		pnTimKiemTaiKhoan.add(txtTimKiemTaiKhoan);
		pnTimKiemTaiKhoan.add(btnTimKiemTaiKhoan);
		pnTop.add(pnTimKiemTaiKhoan);
		
		JPanel pnLoaiTaiKhoan = new JPanel();
		pnLoaiTaiKhoan.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel lblLoaiTK = new JLabel("Lo???i t??i kho???n: ");
		cboLoaiTK = new JComboBox<LoaiTaiKhoanModel>();
		cboLoaiTK.setPreferredSize(new Dimension(335, 20));
		pnLoaiTaiKhoan.add(lblLoaiTK);
		pnLoaiTaiKhoan.add(cboLoaiTK);
		pnTop.add(pnLoaiTaiKhoan);
		
		JPanel pnTenDangNhap = new JPanel();
		pnTenDangNhap.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel lblTenDangNhap = new JLabel("T??n ????ng nh???p: ");
		txtTenDangNhap = new JTextField(30);
		pnTenDangNhap.add(lblTenDangNhap);
		pnTenDangNhap.add(txtTenDangNhap);
		pnTop.add(pnTenDangNhap);
		
		JPanel pnMatKhau = new JPanel();
		pnMatKhau.setLayout(new FlowLayout(FlowLayout.CENTER));
		JLabel lblMatKhau = new JLabel("M???t kh???u: ");
		txtMatKhau = new JPasswordField(30);
		pnMatKhau.add(lblMatKhau);
		pnMatKhau.add(txtMatKhau);
		pnTop.add(pnMatKhau);
		
		JPanel pnHienThiToanBoTaiKhoan = new JPanel();
		pnHienThiToanBoTaiKhoan.setLayout(new FlowLayout(FlowLayout.CENTER));
		chkHienThiToanBoTaiKhoan = new JCheckBox("Hi???n th??? to??n b??? t??i kho???n");
		chkHienThiToanBoTaiKhoan.setFont(new Font("", Font.ITALIC, 15));
		chkHienThiToanBoTaiKhoan.setForeground(Color.BLUE);
		pnHienThiToanBoTaiKhoan.add(chkHienThiToanBoTaiKhoan);
		pnTop.add(pnHienThiToanBoTaiKhoan);
		
		//canh ch???nh
		lblLoaiTK.setPreferredSize(lblTimKiemTaiKhoan.getPreferredSize());
		lblTenDangNhap.setPreferredSize(lblTimKiemTaiKhoan.getPreferredSize());
		lblMatKhau.setPreferredSize(lblTimKiemTaiKhoan.getPreferredSize());
		chkHienThiToanBoTaiKhoan.setPreferredSize(txtTimKiemTaiKhoan.getPreferredSize());
		
		JPanel pnControls = new JPanel();
		pnControls.setLayout(new FlowLayout(FlowLayout.CENTER));
		btnThemTaiKhoan = new JButton("Th??m m???i");
		btnThemTaiKhoan.setIcon(new ImageIcon("images/new9.png"));
		btnSuaTaiKhoan = new JButton("?????i m???t kh???u");
		btnSuaTaiKhoan.setIcon(new ImageIcon("images/edit9.png"));
		btnXoaTaiKhoan = new JButton("Xo?? t??i kho???n");
		btnXoaTaiKhoan.setIcon(new ImageIcon("images/remove9.png"));
		pnControls.add(btnThemTaiKhoan);
		pnControls.add(btnSuaTaiKhoan);
		pnControls.add(btnXoaTaiKhoan);
		pnTop.add(pnControls);
		
		JPanel pnBottom = new JPanel();
		pnBottom.setLayout(new BorderLayout());
		con.add(pnBottom, BorderLayout.CENTER);

		TitledBorder borderTK = new TitledBorder(
				BorderFactory.createLineBorder(Color.RED),
				"Th??ng tin t??i kho???n");
		borderTK.setTitleColor(Color.BLUE);
		borderTK.setTitleFont(new Font("", Font.BOLD, 15));
		pnBottom.setBorder(borderTK);

		dtmTaiKhoan = new DefaultTableModel();
		dtmTaiKhoan.addColumn("T??n ????ng nh???p");
		dtmTaiKhoan.addColumn("M???t kh???u");
		tblTaiKhoan = new JTable(dtmTaiKhoan);
		tblTaiKhoan.setFont(new Font("", Font.ITALIC, 15));
		JScrollPane scTableTK = new JScrollPane(tblTaiKhoan,JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,JScrollPane.HORIZONTAL_SCROLLBAR_ALWAYS);
		pnBottom.add(scTableTK,BorderLayout.CENTER);
	}
	public void addEvents(){
		chkHienThiToanBoTaiKhoan.addItemListener(new ItemListener() {
			
			public void itemStateChanged(ItemEvent e) {
				if(e.getStateChange()==1){
					TaiKhoanService tkService = new TaiKhoanService();
					dsTaiKhoan = tkService.docToanBoTaiKhoan();
					dtmTaiKhoan.setRowCount(0);
					for(TaiKhoanModel tk : dsTaiKhoan)
					{
						Vector<Object>vec = new Vector<Object>();
						vec.add(tk.getTenDangNhap());
						vec.add(tk.getMatKhau());
						dtmTaiKhoan.addRow(vec);
					}
				}
				else{
					dtmTaiKhoan.setRowCount(0);
				}
			}
		});
		cboLoaiTK.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				if(cboLoaiTK.getSelectedIndex() == -1){
					return;
				}
				else{
					TaiKhoanService tkService = new TaiKhoanService();
					dsTaiKhoan = tkService.docTaiKhoanTheoLoai(cboLoaiTK.getSelectedIndex()==0?1:2);
					dtmTaiKhoan.setRowCount(0);
					for(TaiKhoanModel tk : dsTaiKhoan)
					{
						Vector<Object>vec=new Vector<Object>();
						vec.add(tk.getTenDangNhap());
						vec.add(tk.getMatKhau());
						dtmTaiKhoan.addRow(vec);
					}
				}
			}
		});
		btnThemTaiKhoan.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				xuLyThemTaiKhoan();
			}
		});
		tblTaiKhoan.addMouseListener(new MouseListener() {
			
			public void mouseReleased(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			public void mousePressed(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			public void mouseExited(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			public void mouseEntered(MouseEvent e) {
				// TODO Auto-generated method stub
				
			}
			
			public void mouseClicked(MouseEvent e) {
				int row = tblTaiKhoan.getSelectedRow();
				if(row == -1){
					return;
				}
				else{
					TaiKhoanModel tk = dsTaiKhoan.get(row);
					txtTenDangNhap.setText(tk.getTenDangNhap());
					txtMatKhau.setText(tk.getMatKhau());
				}
			}
		});
		btnSuaTaiKhoan.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				xuLySuaTaiKhoan();
			}
		});
		btnXoaTaiKhoan.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				xuLyXoaTaiKhoan();
			}
		});
		btnTimKiemTaiKhoan.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				xuLyTimKiemTaiKhoan();
			}
		});
	}
	protected void xuLyTimKiemTaiKhoan() {
		TaiKhoanService tkService = new TaiKhoanService();
		Vector<TaiKhoanModel>dstk = tkService.timTaiKhoanTheoTenDangNhap(txtTimKiemTaiKhoan.getText());
		dtmTaiKhoan.setRowCount(0);
		for(TaiKhoanModel tk : dstk)
		{
			Vector<Object> vec = new Vector<Object>();
			vec.add(tk.getTenDangNhap());
			vec.add(tk.getMatKhau());
			dtmTaiKhoan.addRow(vec);
		}
	}
	protected void xuLyXoaTaiKhoan() {
		int rowSelected = tblTaiKhoan.getSelectedRow();
		if(rowSelected == -1){
			JOptionPane.showMessageDialog(null, "B???n ch??a ch???n t??i kho???n c???n xo??!");
			return;
		}
		else{
			String tkSelected = tblTaiKhoan.getValueAt(rowSelected, 0)+"";
			int ret = JOptionPane.showConfirmDialog(null, 
					"B???n c?? ch???c ch???n xo?? t??i kho???n "+txtTenDangNhap.getText()+" kh??ng?",
					"X??c nh???n xo??",JOptionPane.YES_NO_OPTION);
			if(ret == JOptionPane.NO_OPTION){
				return;
			}
			else{
				try{
					TaiKhoanService tkService = new TaiKhoanService();
					if(tkService.xoaTaiKhoan(tkSelected) > 0){
						JOptionPane.showMessageDialog(null, "Xo?? t??i kho???n th??nh c??ng!");
						txtTenDangNhap.setText("");
						txtMatKhau.setText("");
						txtTenDangNhap.requestFocus();
						hienThiToanBoTaiKhoan();
					}
				}
				catch(Exception ex){
					ex.printStackTrace();
				}
			}
		}
	}
	protected void xuLySuaTaiKhoan() {
		int rowSelected = tblTaiKhoan.getSelectedRow();
		if(rowSelected == -1) {
			JOptionPane.showMessageDialog(null, "B???n ch??a ch???n t??i kho???n c???n ?????i m???t kh???u!");
			return;
		}
		else {
			if(txtMatKhau.getText().equals("")){
				JOptionPane.showMessageDialog(null, "Kh??ng ???????c ????? tr???ng m???t kh???u!");
				return;
			}
			else{
				String tkSelected = tblTaiKhoan.getValueAt(rowSelected, 0)+"";
				try {
					TaiKhoanService tkService = new TaiKhoanService();
					if(tkService.suaTaiKhoan(tkSelected, txtMatKhau.getText()) > 0){
						JOptionPane.showMessageDialog(null, "?????i m???t kh???u th??nh c??ng!");
						txtTenDangNhap.setText("");
						txtMatKhau.setText("");
						txtTenDangNhap.requestFocus();
						hienThiToanBoTaiKhoan();
					}
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}
	protected void xuLyThemTaiKhoan() {
		if(txtTenDangNhap.getText().equals("")){
			JOptionPane.showMessageDialog(null, "Vui l??ng nh???p t??n ????ng nh???p!");
			return;
		}
		else{
			if(txtMatKhau.getText().equals("")){
				JOptionPane.showMessageDialog(null, "Vui l??ng nh???p m???t kh???u!");
				return;
			}
			else{
				TaiKhoanModel tk = new TaiKhoanModel();
				tk.setTenDangNhap(txtTenDangNhap.getText());
				tk.setMatKhau(txtMatKhau.getText());
				tk.setMaLoaiTK(cboLoaiTK.getSelectedIndex()==0?1:2); //index ch???y t??? 0
				TaiKhoanService tkService = new TaiKhoanService();
				if(tkService.themTaiKhoan(tk) > 0)
				{
					JOptionPane.showMessageDialog(null, "Th??m t??i kho???n th??nh c??ng!");
					txtTenDangNhap.setText("");
					txtMatKhau.setText("");
					txtTenDangNhap.requestFocus();
					hienThiToanBoTaiKhoan();
				}
				else
				{
					JOptionPane.showMessageDialog(null, "Th??m t??i kho???n th???t b???i!");
				}
			}
		}
	}
	public void showWindows(){
		this.setSize(700, 600);
		this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		this.setResizable(false);
		this.setLocationRelativeTo(null);
		this.setVisible(true);
	}
}
