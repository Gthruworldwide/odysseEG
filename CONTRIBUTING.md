# 🤝 دليل المساهمة

شكراً لاهتمامك بالمساهمة في Odysseus AI! نرحب بجميع أشكال المساهمات - سواء كانت تقارير أخطاء أو إقتراحات أم تحسينات.

## 📋 قواعد السلوك

نلتزم بإنشاء مجتمع ترحيبي وشامل. جميع المشاركين مطالبون باحترام [قواعس السلوك الخاصة بنا](CODE_OF_CONDUCT.md).

## 🐛 تقارير الأخطاء

### قبل فتح تقرير خطأ:

- تحقق من [الإصدارات السابقة](https://github.com/Gthruworldwide/odysseEG/issues) لمعرفة إذا تم الإبلاغ عن هذا الخطأ مسبقاً
- قراءة [الوثائق](README.md) بعناية
- تحقق من الإصدار الأخير من المشروع

### كيفية تقديم تقرير خطأ جيد:

استخدم العنوان الواضح والوصف:
- **الخطأ**: ماذا حدث بالضبط؟
- **التوقع**: ماذا كان يجب أن يحدث؟
- **الخطوات لإعادة الإنتاج**: كيفية إعادة الخطأ خطوة بخطوة
- **البيئة**: 
  - نسخة Docker
  - نظام التشغيل
  - متصفح الويب
  - إصدار المشروع

### مثال:

```
**Title**: خطأ في تحميل الصفحة الرئيسية

**Description**:
الصفحة الرئيسية لا تحمل بشكل صحيح

**Steps to Reproduce**:
1. افتح http://localhost:7000
2. انتظر 5 ثواني
3. سترى رسالة خطأ

**Expected**:
يجب أن تحمل الصفحة في ثانيتين

**Environment**:
- Docker version 20.10.21
- Ubuntu 22.04
- Chrome 120.0
```

## ✨ الميزات والتحسينات

قبل بدء العمل على ميزة جديدة:

1. **افتح Issue** لمناقشة الفكرة
2. **انتظر الموافقة** من فريق الصيانة
3. **ابدأ بـ Fork** المشروع
4. **أنشئ فرع** للميزة الجديدة

## 📝 عملية المساهمة

### الخطوة 1: استنساخ (Fork) المشروع

```bash
# استنسخ المشروع على حسابك
# ثم استنسخه محلياً
git clone https://github.com/YOUR_USERNAME/odysseEG.git
cd odysseEG
```

### الخطوة 2: إنشاء فرع ميزة

```bash
git checkout -b feature/amazing-feature
# أو للأخطاء:
git checkout -b fix/bug-description
```

### الخطوة 3: التطوير

- اتبع معايير الكود
- اكتب اختبارات للأكواد الجديدة
- لا تقلل من نسبة التغطية (Coverage)

```bash
# تشغيل الاختبارات
pytest app/tests/ -v --cov=app

# التحقق من الأسلوب
black app/
flake8 app/
mypy app/
```

### الخطوة 4: الالتزام (Commit)

اتبع قالب الرسائل:

```
<type>: <subject>

<body>

<footer>
```

**الأنواع:**
- `feat`: ميزة جديدة
- `fix`: إصلاح خطأ
- `docs`: توثيق
- `style`: تنسيق الكود
- `refactor`: إعادة هيكلة
- `test`: اختبارات
- `chore`: صيانة

**مثال:**

```
feat: add dark mode toggle

- Implement theme switching in UI
- Save preference to localStorage
- Update color scheme

Closes #123
```

### الخطوة 5: الدفع (Push)

```bash
git push origin feature/amazing-feature
```

### الخطوة 6: فتح Pull Request

1. اذهب إلى [صفحة PR](https://github.com/Gthruworldwide/odysseEG/pulls)
2. اضغط "New Pull Request"
3. اختر فرعك
4. ملأ القالب المعطى
5. انتظر المراجعة

## 📋 معايير الكود

### Python

- استخدم **Black** للتنسيق
- استخدم **type hints**
- اتبع **PEP 8**
- اكتب **docstrings**

```python
def calculate_total(items: list[float]) -> float:
    """Calculate the total of all items.
    
    Args:
        items: List of item prices
        
    Returns:
        Total sum of all items
        
    Example:
        >>> calculate_total([10.0, 20.0])
        30.0
    """
    return sum(items)
```

### Commits

- رسائل واضحة وموجزة
- اجعل الـ commits صغيرة ومنطقية
- اختبر قبل الـ commit

### اختبارات

- اكتب اختبارات لكل ميزة جديدة
- قطّن من إصلاح الأخطاء بـ tests
- نسبة تغطية الحد الأدنى: **80%**

```bash
pytest app/tests/test_chat.py -v --cov=app.routes
```

## 🚀 عملية المراجعة

### سيتحقق الفريق من:

- ✅ وضوح الكود
- ✅ جودة الاختبارات
- ✅ الوثائق
- ✅ الأداء
- ✅ الأمان
- ✅ التوافق

### قد نطلب:

- تغييرات في الكود
- اختبارات إضافية
- تحديثات الوثائق

**لا تقلق من التعليقات النقدية** - هذا جزء من عملية تحسين الجودة!

## 📚 الموارد المفيدة

- [وثائق المشروع](README.md)
- [دليل الإعداد](docs/setup.md)
- [معمارية المشروع](docs/architecture.md)
- [قائمة الأشياء المطلوبة](ROADMAP.md)

## ❓ أسئلة؟

- 📧 البريد الإلكتروني: support@odysseus.ai
- 💬 النقاشات: [GitHub Discussions](https://github.com/Gthruworldwide/odysseEG/discussions)
- 🐦 تويتر: [@OdysseusAI](https://twitter.com/OdysseusAI)

---

**شكراً لمساهمتك! 🙏**
