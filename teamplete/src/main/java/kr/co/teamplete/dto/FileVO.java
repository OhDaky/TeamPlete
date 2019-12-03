package kr.co.teamplete.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileVO {
	
	private int fileNo;
	private String fileNameKey, fileName, filePath, fileSize, insUserId, insDate;
	private char delYN;
	private int boardId;
	
	
	public FileVO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public FileVO(int fileNo, String fileNameKey, String fileName, String filePath, String fileSize, String insUserId,
			String insDate, char delYN, int boardId) {
		super();
		this.fileNo = fileNo;
		this.fileNameKey = fileNameKey;
		this.fileName = fileName;
		this.filePath = filePath;
		this.fileSize = fileSize;
		this.insUserId = insUserId;
		this.insDate = insDate;
		this.delYN = delYN;
		this.boardId = boardId;
	}


	public int getFileNo() {
		return fileNo;
	}


	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}


	public String getFileNameKey() {
		return fileNameKey;
	}


	public void setFileNameKey(String fileNameKey) {
		this.fileNameKey = fileNameKey;
	}


	public String getFileName() {
		return fileName;
	}


	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public String getFilePath() {
		return filePath;
	}


	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}


	public String getFileSize() {
		return fileSize;
	}


	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}


	public String getInsUserId() {
		return insUserId;
	}


	public void setInsUserId(String insUserId) {
		this.insUserId = insUserId;
	}


	public String getInsDate() {
		return insDate;
	}


	public void setInsDate(String insDate) {
		this.insDate = insDate;
	}


	public char getDelYN() {
		return delYN;
	}


	public void setDelYN(char delYN) {
		this.delYN = delYN;
	}


	public int getBoardId() {
		return boardId;
	}


	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}


	@Override
	public String toString() {
		return "FileVO [fileNo=" + fileNo + ", fileNameKey=" + fileNameKey + ", fileName=" + fileName + ", filePath="
				+ filePath + ", fileSize=" + fileSize + ", insUserId=" + insUserId + ", insDate=" + insDate + ", delYN="
				+ delYN + ", boardId=" + boardId + "]";
	}




	
}
