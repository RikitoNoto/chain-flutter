/// Generated file. Do not edit.
///
/// Original: assets/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 24 (12 per locale)
///
/// Built on 2023-08-05 at 07:22 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	jp(languageCode: 'jp', build: _StringsJp.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsMarkdownEn markdown = _StringsMarkdownEn._(_root);
	late final _StringsHomeEn home = _StringsHomeEn._(_root);
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
	late final _StringsProfileEn profile = _StringsProfileEn._(_root);
}

// Path: markdown
class _StringsMarkdownEn {
	_StringsMarkdownEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get copy => 'Copy to clipboard';
}

// Path: home
class _StringsHomeEn {
	_StringsHomeEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get noKnowledge => 'Let\'s you follow users and tags';
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
	String get password => 'Password';
	String get login => 'Login';
	String get fail => 'Logged in failed.\nEmail or Password aren\'t correct.';
}

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get follow => 'Follow';
	String get follower => 'Follower';
	String get followTag => 'Follo Tag';
	String get post => 'Post';
	String get favorite => 'Favorite';
	late final _StringsProfileFailEn fail = _StringsProfileFailEn._(_root);
}

// Path: profile.fail
class _StringsProfileFailEn {
	_StringsProfileFailEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get connect => 'Failed to connect';
}

// Path: <root>
class _StringsJp implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJp.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.jp,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <jp>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsJp _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsMarkdownJp markdown = _StringsMarkdownJp._(_root);
	@override late final _StringsHomeJp home = _StringsHomeJp._(_root);
	@override late final _StringsLoginJp login = _StringsLoginJp._(_root);
	@override late final _StringsProfileJp profile = _StringsProfileJp._(_root);
}

// Path: markdown
class _StringsMarkdownJp implements _StringsMarkdownEn {
	_StringsMarkdownJp._(this._root);

	@override final _StringsJp _root; // ignore: unused_field

	// Translations
	@override String get copy => 'クリップボードにコピー';
}

// Path: home
class _StringsHomeJp implements _StringsHomeEn {
	_StringsHomeJp._(this._root);

	@override final _StringsJp _root; // ignore: unused_field

	// Translations
	@override String get noKnowledge => 'ユーザーやタグをフォローしましょう';
}

// Path: login
class _StringsLoginJp implements _StringsLoginEn {
	_StringsLoginJp._(this._root);

	@override final _StringsJp _root; // ignore: unused_field

	// Translations
	@override String get email => 'メールアドレス';
	@override String get password => 'パスワード';
	@override String get login => 'ログイン';
	@override String get fail => 'メールアドレスかパスワードが間違っています';
}

// Path: profile
class _StringsProfileJp implements _StringsProfileEn {
	_StringsProfileJp._(this._root);

	@override final _StringsJp _root; // ignore: unused_field

	// Translations
	@override String get follow => 'フォロー';
	@override String get follower => 'フォロワー';
	@override String get followTag => 'フォロータグ';
	@override String get post => '投稿';
	@override String get favorite => 'お気に入り';
	@override late final _StringsProfileFailJp fail = _StringsProfileFailJp._(_root);
}

// Path: profile.fail
class _StringsProfileFailJp implements _StringsProfileFailEn {
	_StringsProfileFailJp._(this._root);

	@override final _StringsJp _root; // ignore: unused_field

	// Translations
	@override String get connection => '通信に失敗しました';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'markdown.copy': return 'Copy to clipboard';
			case 'home.noKnowledge': return 'Let\'s you follow users and tags';
			case 'login.email': return 'Email';
			case 'login.password': return 'Password';
			case 'login.login': return 'Login';
			case 'login.fail': return 'Logged in failed.\nEmail or Password aren\'t correct.';
			case 'profile.follow': return 'Follow';
			case 'profile.follower': return 'Follower';
			case 'profile.followTag': return 'Follo Tag';
			case 'profile.post': return 'Post';
			case 'profile.favorite': return 'Favorite';
			case 'profile.fail.connect': return 'Failed to connect';
			default: return null;
		}
	}
}

extension on _StringsJp {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'markdown.copy': return 'クリップボードにコピー';
			case 'home.noKnowledge': return 'ユーザーやタグをフォローしましょう';
			case 'login.email': return 'メールアドレス';
			case 'login.password': return 'パスワード';
			case 'login.login': return 'ログイン';
			case 'login.fail': return 'メールアドレスかパスワードが間違っています';
			case 'profile.follow': return 'フォロー';
			case 'profile.follower': return 'フォロワー';
			case 'profile.followTag': return 'フォロータグ';
			case 'profile.post': return '投稿';
			case 'profile.favorite': return 'お気に入り';
			case 'profile.fail.connection': return '通信に失敗しました';
			default: return null;
		}
	}
}
