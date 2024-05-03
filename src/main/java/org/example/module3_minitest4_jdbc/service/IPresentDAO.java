package org.example.module3_minitest4_jdbc.service;

import org.example.module3_minitest4_jdbc.model.Present;

import java.sql.SQLException;
import java.util.List;

public interface IPresentDAO {
  public void insertPresent(Present present) throws SQLException;
  public Present selectPresent(int id);
  public List<Present> selectAllPresent();
  public boolean deletePresent(int id) throws SQLException;
  public boolean updatePresent(Present present) throws SQLException;

}
