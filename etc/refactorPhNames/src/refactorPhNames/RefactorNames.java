package refactorPhNames;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class RefactorNames {

	public static void main(String[] args) throws IOException {
		Files.newDirectoryStream(Paths.get("C:\\Users\\sue005\\git\\ph-ig-review\\input\\fsh\\profiles")).forEach(System.out::println);

	}

}
