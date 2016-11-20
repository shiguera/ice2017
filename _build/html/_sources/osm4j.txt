.. osm4j

Osm4j
=====

Es una librería java para acceder y manipular la infromación procedente de *OpenStreetMap*. El código fuente de la librería se puede consultar en :

`https://github.com/topobyte/osm4j-core <https://github.com/topobyte/osm4j-core>`_

La documentación del API se encuentra en:

`http://www.topobyte.de/projects/osm4j/ <http://www.topobyte.de/projects/osm4j/>`_


Data model
----------

OsmEntity
---------

* getId()
* getMetadata()
* getNumberOfTags()
* getTag()

OsmNode
-------
* getLatitude()
* getLongitude()

OsmWay
------
* getNumberOfNodes()
* getNodeId()

OsmRelation
-----------
* getNumberOfMembers()
* getMember()

Data sets
---------
An OSM dataset is basically a long list of nodes, ways and relations that is encoded using one of the basic storage file formats. osm4j provides access to data encoded in the most important of these data formats by providing OsmReader and OsmIterator implementations for them.

All basic data formats have in common, that they store their data in a specific order:

They contain a sequence of nodes, followed by a sequence of ways, followed by a sequence of relations.
Each sequence contains its elements ordered by the objects' ids in ascending order.
Thus, when processing an OpenStreetMap dataset, you will encounter the contained data in exactly this order. Also, when writing a dataset to some output using an OsmOutputStream, it is important to feed the elements to the stream in the correct order.

It is important to understand that ways and relations reference other objects using their ids. They do not contain the data of referenced objects themselves. Hence, to work with a way or relation it is usually necessary to resolve those references and find the actual objects they reference.

For example, a way is just a sequence of node ids. To interpret the geometry of the way, you have to assemble a sequence of coordinates from the references by finding the referenced nodes by their id.

Hello world
-----------

El ejemplo que sigue descarga un dataset de ejemplo que contiene los datos correspondientes a la Relation 1005914que corresponde con la Facultad de Letras de la Universidad de Girona. Los datos están almacenados en un fichero en formato .osm.

.. code-block:: java

  public static void main(String[] args)
      throws MalformedURLException, IOException,
          ParserConfigurationException, SAXException {
    // Define a query to retrieve some data
    String query = "http://mercatorlab.com/geoinquietos/girona1.osm";

    // Open a stream
    InputStream input = new URL(query).openStream();

    // Create an iterator for XML data
    OsmIterator iterator = new OsmXmlIterator(input, false);

    // Iterate all elements
    for (EntityContainer container : iterator) {

      // Check if the element is a Relation
      if (container.getType() == EntityType.Relation) {

        // Cast the entity to OsmRelation
        OsmRelation rel = (OsmRelation) container.getEntity();

        // Check if the Relation is the 1005914
        if(rel.getId()==1005914l) {

          // Print basic information
          System.out.println("id: " + rel.getId());
          int numberOfTags = rel.getNumberOfTags();
          System.out.println("number of tags: "
              + rel.getNumberOfTags());
          System.out.println("tags:");
          for (int i = 0; i < numberOfTags; i++) {
            OsmTag tag = rel.getTag(i);
            System.out.println(tag.getKey() + " = "
                + tag.getValue());
          }
          int numberOfMembers = rel.getNumberOfMembers();
          System.out.println("number of members: " +
              rel.getNumberOfMembers());
          for(int i=0; i<numberOfMembers;i++) {
            OsmRelationMember member = rel.getMember(i);
            System.out.println(member.getId() + " " +
                member.getType() + " " + member.getRole());
          }
        }
      }
    }
  }

