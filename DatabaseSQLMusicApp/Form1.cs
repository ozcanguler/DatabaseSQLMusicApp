using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DatabaseSQLMusicApp
{
    public partial class Form1 : Form
    {
        //string connectionString = "datasource=localhost;port=3306;username=root;password=;database=music";
        BindingSource albumBindingSource = new BindingSource();     //bindingsource ability connect a list of items

        BindingSource trackBindingSource = new BindingSource();
        List<Album> albums = new List<Album>();
        public Form1()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            //AlbumsDAO albumsDao = new AlbumsDAO();
            //Album a1 = new Album
            //{
            //    ID = 1,
            //    AlbumName = "First Album",
            //    ArtistName = "Fredy",
            //    Description = "aasdasd",
            //    ImageURL = "www.wiki.com",
            //    Year = 2222
            //};
            //Album a2 = new Album
            //{
            //    ID = 2,
            //    AlbumName = "Second Album",
            //    ArtistName = "Fredy",
            //    Description = "aasdasd",
            //    ImageURL = "www.wiki.com",
            //    Year = 2222
            //};
            //albumsDao.albums.Add(a1);
            //albumsDao.albums.Add(a2);

            //albumBindingSource.DataSource = albumsDao.albums;
            //dataGridView1.DataSource = albumBindingSource;
           

            AlbumsDAO albumsDAO = new AlbumsDAO();

            albums = albumsDAO.GetAllAlbums();

            //albumBindingSource.DataSource = albumsDAO.GetAllAlbums();
            albumBindingSource.DataSource = albums;
            dataGridView1.DataSource = albumBindingSource;
        }

        private void Btn_src_Click(object sender, EventArgs e)
        {
           

                AlbumsDAO albumsDAO = new AlbumsDAO();
                albumBindingSource.DataSource = albumsDAO.SearchAlbums(txtBox_src.Text);
                dataGridView1.DataSource = albumBindingSource;
            }

        private void DataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridView dataGridView=(DataGridView)sender;
            int rowClicked = dataGridView.CurrentRow.Index;

            string imageURL = dataGridView.Rows[rowClicked].Cells[4].Value.ToString();

            pictureBox1.Load(imageURL);

            //AlbumsDAO albumsDAO = new AlbumsDAO();
            //trackBindingSource.DataSource = albumsDAO.GetTracksForAlbum((int)dataGridView.Rows[rowClicked].Cells[0].Value);  where
            //trackBindingSource.DataSource = albumsDAO.GetTracksUsingJoin((int)dataGridView.Rows[rowClicked].Cells[0].Value);
            trackBindingSource.DataSource = albums[rowClicked].Tracks;
            dataGridView2.DataSource = trackBindingSource;
        }

        private void Btn_add_Click(object sender, EventArgs e)
        {
            Album album = new Album()
            {
                AlbumName = txt_name.Text,
                ArtistName = txt_artist.Text,
                Year = int.Parse(txt_year.Text),
                ImageURL = txt_img.Text,
                Description = txt_des.Text
            };
            AlbumsDAO albumsDAO = new AlbumsDAO();
            int result = albumsDAO.InsertAlbums(album);
            MessageBox.Show(result + " new row(s) inserted");
        }

        private void BtnAlbum_delete_Click(object sender, EventArgs e)
        {

            int rowClicked1 = dataGridView1.CurrentRow.Index;

            int rowClicked = dataGridView2.CurrentRow.Index;

            int trackId = (int)dataGridView2.Rows[rowClicked].Cells[0].Value;

            AlbumsDAO albumsDAO = new AlbumsDAO();
          int result = albumsDAO.DeleteTrack(trackId);

            MessageBox.Show("You have deleted album: "+result);


            //dataGridView2.DataSource = null;
            albums = albumsDAO.GetAllAlbums();
            trackBindingSource.DataSource = albums[rowClicked1].Tracks;
            dataGridView2.DataSource = trackBindingSource;
        }
    }
    }

