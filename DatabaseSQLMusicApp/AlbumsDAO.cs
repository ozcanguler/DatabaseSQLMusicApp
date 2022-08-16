using MySql.Data.MySqlClient;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseSQLMusicApp
{
    internal class AlbumsDAO
    {        
        //public List<Album> albums = new List<Album>();

        string connectionString = "datasource=localhost;port=3306;username=root;password=;database=music";

        public List<Album> GetAllAlbums()
        {
            //start with empty list

            List<Album> returnThese = new List<Album>();

            MySqlConnection connection = new MySqlConnection(connectionString); //connect mysql server
            connection.Open();

            //define the sql statement to fetch all albums
            MySqlCommand sqlCommand = new MySqlCommand("select*from album", connection);

            using (MySqlDataReader reader = sqlCommand.ExecuteReader())
            {
                while (reader.Read())
                {
                    Album a = new Album
                    {
                        ID = reader.GetInt32(0),
                        AlbumName = reader.GetString(1),
                        ArtistName = reader.GetString(2),
                        Year = reader.GetInt32(3),
                        ImageURL = reader.GetString(4),
                        Description = reader.GetString(5)

                    };
                    returnThese.Add(a);
                }
            }
            connection.Close();
            return returnThese;
        }

       public List<Album> SearchAlbums(string txtBox_src)
        {
            
            List<Album> returnThese = new List<Album>();
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            string searchWildPhrase = "%" + txtBox_src + "%";
            //MySqlCommand sqlCommand = new MySqlCommand("select*from album where ALBUM_TITLE LIKE "+"'%" + txtBox_src + "%'", connection);  //WARNING! SQL injection 
            MySqlCommand command = new MySqlCommand();
            command.CommandText= "select*from album where ALBUM_TITLE LIKE @search";
            command.Parameters.AddWithValue("@search", searchWildPhrase);
            command.Connection = connection;
            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Album a = new Album
                    {
                        ID = reader.GetInt32(0),
                        AlbumName = reader.GetString(1),
                        ArtistName = reader.GetString(2),
                        Year = reader.GetInt32(3),
                        ImageURL = reader.GetString(4),
                        Description = reader.GetString(5)

                    };
                    returnThese.Add(a);
                }
            }
            connection.Close();
            return returnThese;

        }
        public List<Album> GetAlbums(string txtBox_src)
        {

            List<Album> returnThese = new List<Album>();
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            string searchWildPhrase = "%" + txtBox_src + "%";
            //MySqlCommand sqlCommand = new MySqlCommand("select*from album where ALBUM_TITLE LIKE "+"'%" + txtBox_src + "%'", connection);  //WARNING! SQL injection 
            MySqlCommand command = new MySqlCommand();
            command.CommandText = "select*from album where ALBUM_TITLE LIKE @search";
            command.Parameters.AddWithValue("@search", searchWildPhrase);
            command.Connection = connection;
            using (MySqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    Album a = new Album
                    {
                        ID = reader.GetInt32(0),
                        AlbumName = reader.GetString(1),
                        ArtistName = reader.GetString(2),
                        Year = reader.GetInt32(3),
                        ImageURL = reader.GetString(4),
                        Description = reader.GetString(5)

                    };
                    returnThese.Add(a);
                }
            }
            connection.Close();
            return returnThese;

        }
        public int InsertAlbums(Album album)
        {


            MySqlConnection connection = new MySqlConnection(connectionString); //connect mysql server
            connection.Open();

            //define the sql statement to fetch all albums
            MySqlCommand sqlCommand = new MySqlCommand("INSERT INTO album (ALBUM_TITLE,ARTIST,YEAR,IMAGE_NAME,DESCRIPTION) VALUES (@albumtitle, @artist, @year, @img, @des)", connection);

            sqlCommand.Parameters.AddWithValue("@albumtitle", album.AlbumName);
            sqlCommand.Parameters.AddWithValue("@artist", album.ArtistName);
            sqlCommand.Parameters.AddWithValue("@year", album.Year);
            sqlCommand.Parameters.AddWithValue("@img", album.ImageURL);
            sqlCommand.Parameters.AddWithValue("@des", album.Description);

            int newRows = sqlCommand.ExecuteNonQuery();
            connection.Close();
            return newRows;
        }
        public List<Track> GetTracksForAlbum(int albumID)
        {
            //start with empty list

            List<Track> returnThese = new List<Track>();

            MySqlConnection connection = new MySqlConnection(connectionString); //connect mysql server
            connection.Open();

            //define the sql statement to fetch all albums
            MySqlCommand sqlCommand = new MySqlCommand();
            sqlCommand.CommandText = "Select * from tracks where album_ID = @albumid";  //SQL tables
            
            sqlCommand.Parameters.AddWithValue("@albumid", albumID);
            sqlCommand.Connection = connection;
            using (MySqlDataReader reader = sqlCommand.ExecuteReader())
            {
                while (reader.Read())
                {
                    Track t = new Track
                    {
                        ID = reader.GetInt32(0),
                        Name = reader.GetString(1),
                        Number = reader.GetInt32(2),
                        Video_URL = reader.GetString(3),
                        Lyrics = reader.GetString(4)

                    };
                    returnThese.Add(t);
                }
            }
            connection.Close();
            return returnThese;
        }

        public List<JObject> GetTracksUsingJoin(int albumID)
        {
            //start with empty list

            List<JObject> returnThese = new List<JObject>();

            MySqlConnection connection = new MySqlConnection(connectionString); //connect mysql server
            connection.Open();

            //define the sql statement to fetch all albums
            MySqlCommand sqlCommand = new MySqlCommand();
            sqlCommand.CommandText = "Select album.ALBUM_TITLE, tracks.track_title, album.ARTIST from tracks JOIN album ON tracks.album_ID = album.ID where album_ID = @albumid";  //SQL JOIN tables

            sqlCommand.Parameters.AddWithValue("@albumid", albumID);
            sqlCommand.Connection = connection;
            using (MySqlDataReader reader = sqlCommand.ExecuteReader())
            {
               
                while (reader.Read())
                {
                    JObject newTrack = new JObject();
                    for (int i = 0; i < reader.FieldCount; i++)
                    {
                        newTrack.Add(reader.GetName(i).ToString(), reader.GetValue(i).ToString());
                    }
                    returnThese.Add(newTrack);
                }
            }
            connection.Close();
            return returnThese;
        }
        internal int DeleteAlbums(int album)
        {


            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            MySqlCommand sqlCommand = new MySqlCommand("DELETE FROM album WHERE ID=@ID", connection);
            sqlCommand.Parameters.AddWithValue("@ID", album);
            int newRows = sqlCommand.ExecuteNonQuery();
            connection.Close();
            return newRows;
        }
    }
}