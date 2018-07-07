<%@page import="org.apache.poi.hssf.util.HSSFColor"%>

<%@ page pageEncoding = "EUC-KR" %>

<%@ page import = "java.io.*, org.apache.poi.hssf.usermodel.*, org.apache.poi.poifs.filesystem.POIFSFileSystem" %>

 

<%

 try{

        //�ϳ��� ���� ���Ͽ� �ش��ϴ� Excel Workbook ����

       HSSFWorkbook workbook = new HSSFWorkbook();

        //Sheet ����

       HSSFSheet sheet = workbook.createSheet("first sheet");

        //������ Sheet�� �ε���, �̸��� ����

       workbook.setSheetName(0, "��Ʈ1");

        //Sheet ���� �ϳ� �����. (rownum �ε��� ����)

       HSSFRow row = sheet.createRow((short)0);

        //Sheet ���� �����. (column �ε��� ����)

        //�࿡ ���� 3�� ���� �� �� ����

       HSSFCell cell1 = row.createCell((short)0);

        //���� ��Ʈ �����ϴ� Ŭ����

       HSSFFont font = workbook.createFont();

        

        //���� ��Ÿ�� ���� Ŭ����

       HSSFCellStyle cellStyle = workbook.createCellStyle();

       cellStyle.setFillBackgroundColor(HSSFColor.BLUE.index2);

       cell1.setCellValue("number1");

       cell1.setCellStyle(cellStyle);

       font.setFontHeightInPoints((short)14);

       font.setFontName("����ü");

       font.setColor((short)10);

      

       HSSFCell cell2 = row.createCell((short)1);

       cell2.setCellValue("number2");

      

       HSSFRow row1 = sheet.createRow((short)1);

       HSSFCell cell3 = row1.createCell((short)0);

       cell3.setCellValue("number3");

      

       FileOutputStream fileOutput = new FileOutputStream("C:\\Apollo_Reports\\abcd.xls");

 

       workbook.write(fileOutput);

       fileOutput.close();

 

       out.println("Excel File ���� OK");

      

       //���� ���� �ҷ�����

       POIFSFileSystem fileInput = new POIFSFileSystem(new FileInputStream("C:\\Apollo_Reports\\abcd.xls"));

 

       HSSFWorkbook workbook2 = new HSSFWorkbook(fileInput);

       HSSFSheet sheet2 = workbook2.getSheetAt(0); //��Ʈ ����

       HSSFRow row2 = sheet2.getRow(0); // �� ����

 

       for(int j=0; j<=sheet2.getLastRowNum(); j++){//�� ����ŭ

             row2 = sheet2.getRow(j);

             for(int i=0; i<= row2.getLastCellNum()-1; i++){ // �� ����ŭ

               HSSFCell cell4 = row2.getCell((short)i);

               System.out.println(cell4); //�� ���

             } 

       }

      

 }catch(Exception e){

       out.println(e);

 }

%>

 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

</head>

<body>

 

</body>

</html>

