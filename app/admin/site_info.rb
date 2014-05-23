ActiveAdmin.register SiteInfo do

	config.filters = false
    menu :priority => 0, :label => "Site info"



	index do                     
		column "Titulo", :doc_title
		column "Facebook Link", :facebook_link
		column "Twitter Link", :twitter_link
		column "Email Link", :email_link
		column "Telefono", :telefono
		column "Titulo(google)", :site_title
		column "Descripcion(google)", :site_desc
		column "Keywords(google)", :site_keywords
		column "Titulo(facebook)", :og_title
		column "Descripcion(facebook)", :og_desc
		column "Url(facebook)", :og_url
		column "Imagen(facebook)", :og_image
		column "Nombre del site(facebook)", :og_site_name
		default_actions                   
	end 

	form do |f|                         
		f.inputs "Clientes" do      
		  f.input :doc_title, :label => "Titulo"
		  f.input :facebook_link, :label => "Facebook Link"
		  f.input :twitter_link, :label => "Twitter Link"
		  f.input :email_link, :label => "Email Link"
		  f.input :telefono, :label => "Telefono"
		  f.input :site_title, :label => "Titulo(google)"
		  f.input :site_desc, :label => "Descripcion(google)"
		  f.input :site_keywords, :label => "Keywords(google)"
		  f.input :og_title, :label => "Titulo(facebook)"
		  f.input :og_desc, :label => "Descripcion(facebook)"
		  f.input :og_url, :label => "Url(facebook)"
		  f.input :og_image, :label => "Imagen(facebook)"
		  f.input :og_site_name, :label => "Nombre del site(facebook)"
		end                               
		f.actions
	end

    show do |ad|
      attributes_table do
        row :doc_title
        row :facebook_link
        row :twitter_link
        row :email_link
        row :telefono
        row :site_title
        row :site_desc
        row :site_keywords
        row :og_title
        row :og_desc
        row :og_url
        row :og_image do
          image_tag(ad.og_image.url)
        end
        row :og_site_name
      end
    end


end
