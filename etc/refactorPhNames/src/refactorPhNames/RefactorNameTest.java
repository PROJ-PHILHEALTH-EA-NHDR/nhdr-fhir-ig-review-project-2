package refactorPhNames;

import static java.nio.file.Files.list;
import static java.nio.file.Paths.get;
import static java.util.stream.Collectors.joining;
import static org.junit.jupiter.api.Assertions.*;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.jupiter.api.Test;

class RefactorNameTest {

	private String fileNameToIdentifier(String fileName) {
		fileName = coreFileName(fileName);
		String replaceAll = fileName.replaceAll("(\\p{Upper})", "-$1").toLowerCase().substring(1);
		String identifier = String.format("ph-nhdr-%s", replaceAll);
		return identifier;
	}

	private String coreFileName(String fileName) {
		fileName = fileName.startsWith("PH_") ? fileName.substring(3) : fileName;
		fileName = fileName.endsWith(".fsh") ? fileName.substring(0, fileName.length() - 4) : fileName;
		return fileName;
	}

	private String removeValueSetEnding(String fileName) {
		String suffix = "ValueSet";
		fileName = fileName.endsWith(suffix) ? fileName.substring(0, fileName.length() - suffix.length()) : fileName;
		return fileName;
	}

	private String replaceIdentifier(String identifier, String line) {
		line = line.startsWith("Id:") ? "Id: " + identifier : line;
		return line;
	}

	private String replaceProfile(String fileName, String line) {
		line = line.startsWith("Profile:") ? "Profile: " + "PHNhdr" + fileName : line;
		return line;
	}

	private String replaceExtension(String fileName, String line) {
		line = line.startsWith("Extension:") ? "Extension: " + "PHNhdr" + fileName : line;
		return line;
	}

	/**
	 * all files remove lines starting with ^status, ^url. They are automatic
	 */

	/**
	 * under profiles extract profileName as PH_([alpha]+) replace line 'Profile'
	 * with 'Profile: PHNhdr' + profileName set identifier as profileName
	 */

	@Test
	void testReplaceExtensions() throws Exception {
		String line = "* extension contains Organization named organization 0..*";

		Map<String, String> replacementMap = Collections.singletonMap("Organization", "ph-nhdr-organization");

		line = replaceExtensionReference(replacementMap, line);

		System.out.println(line);

	}

	private String replaceExtensionReference(Map<String, String> replacementMap, String line) {
		Set<Entry<String, String>> entrySet = replacementMap.entrySet();

		for (Entry<String, String> e : entrySet) {
			line = line.replaceAll(e.getKey() + " named", e.getValue() + " named");
		}
		return line;
	}

	private String replaceValuesetReference(Map<String, String> replacementMap, String line) {
		Set<Entry<String, String>> entrySet = replacementMap.entrySet();

		for (Entry<String, String> e : entrySet) {
			line = line.replaceAll("from " + e.getKey(), "from " + e.getValue());
		}
		return line;
	}

//	@Test
//	void transformProfilesTest() throws Exception {
//		final Map<String, String> replacementMap = Collections.singletonMap("Organization", "ph-nhdr-organization");
//
//		transformProfiles(replacementMap);
//
//	}

	private void transformProfiles(final Map<String, String> extensionNameReplacementMap, final Map<String, String> valuesetNameReplacementMap) throws IOException {
		Path out = Path.of("C:\\Users\\sue005\\git\\ph-ig-review\\input\\fsh\\profiles");

		deleteDir(out);

		Files.createDirectories(out);
		Path in = Paths.get("C:\\Users\\sue005\\git\\ph-ig-review\\src_profiles_fsh");
		try (Stream<Path> profileFiles = Files.list(in)) {
			profileFiles.forEach(p -> {
				String name = p.toFile().getName();
				String fileName = coreFileName(name);
				String identifier = fileNameToIdentifier(name);

				try {
					List<String> content = Files.readAllLines(p);

					Function<? super String, ? extends String> mapper = line -> replaceIdentifier(identifier, line);
					Function<? super String, ? extends String> mapper2 = line -> replaceProfile(fileName, line);
					Function<? super String, ? extends String> mapper3 = line -> replaceExtensionReference(
							extensionNameReplacementMap, line);
					Function<? super String, ? extends String> mapper4 = line -> replaceValuesetReference(
							valuesetNameReplacementMap, line);


					String outContent = content.stream().filter(isRubbish()).map(mapper).map(mapper2).map(mapper3).map(mapper4)
							.collect(Collectors.joining("\n"));
					Path outPath = out.resolve(identifier + ".fsh");
					Files.writeString(outPath, outContent);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			});
		}
	}

	@Test
	void transformExtensions(final Map<String, String> valuesetNameReplacementMap) throws Exception {

		Path out = Path.of("C:\\Users\\sue005\\git\\ph-ig-review\\input\\fsh\\extensions");

		deleteDir(out);

		Files.createDirectories(out);
		Path in = get("C:\\\\Users\\\\sue005\\\\git\\\\ph-ig-review\\\\src_extensions_fsh");

		HashMap<String, String> nameMap = new HashMap<>();

		try (Stream<Path> extensionFiles = list(in)) {
			extensionFiles.forEach(p -> {
				String name = p.toFile().getName();
				String fileName = coreFileName(name);
				String identifier = fileNameToIdentifier(name);

				nameMap.put(fileName, identifier);

				try {
					List<String> content = Files.readAllLines(p);

					Function<? super String, ? extends String> mapper = line -> replaceIdentifier(identifier, line);
					Function<? super String, ? extends String> mapper2 = line -> replaceExtension(fileName, line);
					Function<? super String, ? extends String> mapper4 = line -> replaceValuesetReference(
							valuesetNameReplacementMap, line);


					String outContent = content.stream().filter(isRubbish()).map(mapper).map(mapper2).map(mapper4)
							.collect(joining("\n"));
					Path outPath = out.resolve(identifier + ".fsh");
					Files.writeString(outPath, outContent);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			});
		}

		Comparator<String> c = Comparator.comparingInt(String::length).thenComparing(Function.identity());

		SortedMap<String, String> extensionNameReplacementMap = new TreeMap<>(c.reversed());

		extensionNameReplacementMap.putAll(nameMap);

		transformProfiles(extensionNameReplacementMap, valuesetNameReplacementMap);

	}

	@Test
	void transformValueSets() throws Exception {

		Path out = Path.of("C:\\Users\\sue005\\git\\ph-ig-review\\input\\fsh\\valuesets");

		deleteDir(out);

		Files.createDirectories(out);
		Path in = Paths.get("C:\\\\Users\\\\sue005\\\\git\\\\ph-ig-review\\\\src_valuesets_fsh");

		HashMap<String, String> nameMap = new HashMap<>();

		try (Stream<Path> extensionFiles = Files.list(in)) {
			extensionFiles.forEach(p -> {
				String name = p.toFile().getName();
				String fileName = coreFileName(name);
				String fileName2 = removeValueSetEnding(fileName);

				System.out.println(fileName2);

				String identifier = fileNameToIdentifier(fileName2);

				nameMap.put(fileName, identifier);

				try {
					List<String> content = Files.readAllLines(p);

					Function<? super String, ? extends String> mapper = line -> replaceIdentifier(identifier, line);

					String outContent = content.stream().filter(isRubbish()).map(mapper)
							.collect(Collectors.joining("\n"));
					Path outPath = out.resolve(identifier + ".fsh");
					Files.writeString(outPath, outContent);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			});
		}

		Comparator<String> c = Comparator.comparingInt(String::length).thenComparing(Function.identity());

		SortedMap<String, String> valuesetNameReplacementMap = new TreeMap<>(c.reversed());

		valuesetNameReplacementMap.putAll(nameMap);

		System.out.println(valuesetNameReplacementMap);

		transformExtensions(valuesetNameReplacementMap);

	}

	private void deleteDir(Path out) throws IOException {
		Files.walkFileTree(out, new SimpleFileVisitor<Path>() {
			@Override
			public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
				System.out.println("Deleting file: " + file);
				Files.delete(file);
				return FileVisitResult.CONTINUE;
			}

			@Override
			public FileVisitResult postVisitDirectory(Path dir, IOException exc) throws IOException {
				System.out.println("Deleting dir: " + dir);
				if (exc == null) {
					Files.delete(dir);
					return FileVisitResult.CONTINUE;
				} else {
					throw exc;
				}
			}
		});
	}

	Predicate<? super String> isRubbish() {
		List<String> rubbish = List.of("* ^url =", "* ^status = #draft", "* ^publisher = \"Your Organization Name\"",
				"* ^date = \"2024-11-28\"", "* ^experimental = false", "* ^version = \"1.0.0\"");
		return l -> rubbish.stream().noneMatch(r -> l.contains(r));
	}
}
